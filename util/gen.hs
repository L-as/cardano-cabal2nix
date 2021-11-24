#! /usr/bin/env nix-shell
#! nix-shell -p "haskellPackages.ghcWithPackages (p: [ p.procex ])" nix-prefetch-github git cabal2nix
#! nix-shell -i runghc

-- TODO: Don't use git and only use nix-prefetch-github? Might be slower
-- TODO: rewrite this using streamly without strings

{-# LANGUAGE LambdaCase #-}

import Procex.Prelude
import System.Directory
import qualified Data.ByteString.Lazy.UTF8 as BU
import Data.List
import System.IO
import Data.Foldable
import Control.Monad

cl :: Cmd -> IO [String]
cl = ((lines . BU.toString) <$>) . capture

-- very ugly parsing function, sorry readers
parseCabalProject :: FilePath -> IO [(String,String,String)]
parseCabalProject path = do
  l <- lines <$> readFile path
  pure $ p l
  where
    prefix = "location: https://github.com/"
    p :: [String] -> [(String,String,String)]
    p [] = []
    p ("source-repository-package":t) =
      let
        (type_:t') = dropWhile (("--" ==) . take 2 . dropWhile (== ' ')) t
        (loc':t'') = dropWhile (("--" ==) . take 2 . dropWhile (== ' ')) t'
        (tag':t''') = dropWhile (("--" ==) . take 2 . dropWhile (== ' ')) t''
        loc = dropWhile (== ' ') loc'
        tag = drop 5 . dropWhile (== ' ') $ tag'
        (owner, repo') = span (/= '/') $ drop (length prefix) loc
        repo =
          if drop (length repo' - 4) repo' == ".git"
            then tail $ take (length repo' - 4) repo'
            else tail repo'
      in
        if (dropWhile (== ' ') type_ == "type: git") && (take (length prefix) . dropWhile (== ' ')) loc' == prefix
          then (owner, repo, tag) : p t'''
          else p t
    p (_:t) = p t

genSources :: [(String,String,String)] -> IO String
genSources l = ("{ fetchFromGitHub }:\n\n# This is autogenerated through util/gen.hs\n{\n" <>) <$> go l "}\n"
  where
    go :: [(String,String,String)] -> String -> IO String
    go ((owner,repo,rev):t) acc =
      do
        [hash] <- cl $ mq "jq" "-r" ".sha256" <| mq "nix-prefetch-github" "--no-fetch-submodules" "--prefetch" "--json" "--rev" rev owner repo
        go t ("  " <> repo <> " = fetchFromGitHub {\n    owner = \"" <> owner <> "\";\n    repo = \"" <> repo <> "\";\n    rev = \"" <> rev <> "\";\n    sha256 = \"" <> hash <> "\";\n  };\n" <> acc)
    go [] acc = pure acc

download :: (String,String,String) -> IO ()
download (owner, repo, rev) = do
  b <- doesPathExist repo
  unless b $ do
    createDirectory repo
    putStrLn $ "Downloading " <> owner <> "/" <> repo <> "/" <> rev
    mq "tar" "-zx" "-C" repo "--strip-components=1" <| mq "curl" "-L" ("https://github.com/" <> owner <> "/" <> repo <> "/archive/" <> rev <> ".tar.gz")

main :: IO ()
main = do
  pwd <- makeAbsolute "."
  [d] <- cl $ mq "mktemp" "-d"
  setCurrentDirectory d

  -- generate sources.nix
  mq "git" "clone" "https://github.com/input-output-hk/plutus-apps" "--filter=tree:0"
  [plutus_apps_rev] <- cl $ mq "git" "-C" "plutus-apps" "rev-parse" "HEAD"
  revs1 <- parseCabalProject "./plutus-apps/cabal.project"
  Just (_, _, cardano_node_rev) <- pure $ find (\case { (_,"cardano-node",_) -> True; _ -> False }) revs1
  download ("input-output-hk", "cardano-node", cardano_node_rev)
  revs2 <- parseCabalProject "./cardano-node/cabal.project"
  Just (_, _, cardano_wallet_rev) <- pure $ find (\case { (_,"cardano-wallet",_) -> True; _ -> False }) revs1
  download ("input-output-hk", "cardano-wallet", cardano_wallet_rev)
  revs3 <- parseCabalProject "./cardano-wallet/cabal.project"
  Just (_, _, _) <- pure $ find (\case { (_,"cardano-sl-x509",_) -> True; _ -> False }) revs3
  let revs = sort $ nubBy (\(_,x,_) (_,y,_) -> x == y) (("input-output-hk","plutus-apps",plutus_apps_rev):(revs1 <> revs2 <> revs3))
  traverse_ download revs
  sources <- genSources revs
  writeFile (pwd <> "/sources.nix") sources

  (doesPathExist $ pwd <> "/pkgs") >>= (flip when $ removeDirectoryRecursive (pwd <> "/pkgs"))
  createDirectory (pwd <> "/pkgs")
  h <- openBinaryFile (pwd <> "/pkgs.nix") WriteMode
  hPutStr h "{ sources }:\n\nself: {\n"
  dir <- sort <$> listDirectory "."
  for_ dir $ \repo -> do
    putStr "Generating for "
    putStrLn repo
    hPutStr h "  # "
    hPutStrLn h repo
    -- generate nix expressions
    packages <- (sort <$>) . cl $ mq "env" "-C" repo "find" "-type" "f" "-name" "*.cabal"
    for_ packages $ \package -> do
      let name = reverse . takeWhile (/= '/') . drop 6 . reverse $ package
      unless (name == "plutus-doc") $ do
        let dir = drop 1 $ take (length package - 7 - length name) package
        hp <- openBinaryFile (pwd <> "/pkgs/" <> name <> ".nix") WriteMode
        hPutStr hp "{ sources }:\n\n"
        mq "cabal2nix" "--no-hpack" (repo <> "/" <> dir) (1,hp)
        hClose hp
        mq "sed" "-i" "-e" "s/optparse-applicative-fork/optparse-applicative/g" "-e" ("s|src = .*;|src = \"${sources." <> repo <> "}" <> dir <> "\";|") (pwd <> "/pkgs/" <> name <> ".nix")
        hPutStrLn h ("  " <> name <> " = self.callPackage (import ./pkgs/" <> name <> ".nix { inherit sources; }) {};")
    hPutStr h "\n"
  hPutStrLn h "}"
  hClose h

  setCurrentDirectory pwd
  mq "rm" "-rf" d

  pure ()
