{ sources }:

{ mkDerivation, aeson, aeson-casing, base, bytestring, containers
, cookie, cryptonite, data-default, deriving-compat, exceptions
, foldl, freer-extras, freer-simple, hashable, http-client
, http-client-tls, http-conduit, http-types, jwt, lens, lib
, monad-logger, mtl, newtype-generics, openapi3
, plutus-chain-index-core, plutus-contract, plutus-ledger
, plutus-tx, prettyprinter, process, prometheus, purescript-bridge
, recursion-schemes, row-types, servant, servant-client
, servant-purescript, servant-server, servant-websockets, streaming
, tasty, tasty-hunit, template-haskell, text, time, time-out
, time-units, transformers, unordered-containers, uuid, wai
}:
mkDerivation {
  pname = "playground-common";
  version = "0.1.0.0";
  src = "${sources.plutus-apps}/playground-common";
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson aeson-casing base bytestring containers cookie cryptonite
    data-default deriving-compat exceptions foldl freer-extras
    freer-simple hashable http-client http-client-tls http-conduit
    http-types jwt lens monad-logger mtl newtype-generics openapi3
    plutus-chain-index-core plutus-contract plutus-ledger plutus-tx
    prettyprinter process prometheus purescript-bridge
    recursion-schemes row-types servant servant-client
    servant-purescript servant-server servant-websockets streaming
    template-haskell text time time-out time-units transformers
    unordered-containers uuid wai
  ];
  testHaskellDepends = [
    aeson base bytestring containers cryptonite freer-simple
    plutus-contract plutus-ledger recursion-schemes tasty tasty-hunit
    text
  ];
  license = lib.licenses.asl20;
}
