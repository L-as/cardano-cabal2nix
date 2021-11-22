{ sources }:

{ mkDerivation, adjunctions, aeson, aeson-pretty, base, bytestring
, containers, data-default, data-default-class, exceptions
, file-embed, filepath, freer-extras, http-client, http-conduit
, insert-ordered-containers, jwt, lens, lib, monad-logger, mtl
, newtype-generics, optparse-applicative, playground-common
, plutus-contract, plutus-ledger, plutus-tx, plutus-tx-plugin
, purescript-bridge, regex-compat, row-types, servant
, servant-client, servant-client-core, servant-foreign
, servant-purescript, servant-server, tasty, tasty-golden
, tasty-hunit, template-haskell, text, time-units, transformers
, wai, wai-cors, warp, web-ghc
}:
mkDerivation {
  pname = "plutus-playground-server";
  version = "0.1.0.0";
  src = "${sources.plutus-apps}/plutus-playground-server";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson base bytestring containers data-default exceptions file-embed
    http-client http-conduit jwt lens monad-logger mtl newtype-generics
    playground-common plutus-contract plutus-ledger plutus-tx
    plutus-tx-plugin regex-compat row-types servant servant-client
    servant-client-core servant-server template-haskell text time-units
    transformers wai-cors web-ghc
  ];
  executableHaskellDepends = [
    adjunctions aeson aeson-pretty base bytestring containers
    data-default data-default-class exceptions filepath freer-extras
    lens monad-logger mtl optparse-applicative playground-common
    plutus-contract plutus-ledger plutus-tx plutus-tx-plugin
    purescript-bridge row-types servant servant-foreign
    servant-purescript servant-server text time-units transformers wai
    warp web-ghc
  ];
  testHaskellDepends = [
    aeson base bytestring insert-ordered-containers mtl
    newtype-generics playground-common plutus-contract plutus-ledger
    plutus-tx plutus-tx-plugin tasty tasty-golden tasty-hunit text
    time-units transformers web-ghc
  ];
  doHaddock = false;
  homepage = "https://github.com/iohk/plutus#readme";
  license = lib.licenses.asl20;
}
