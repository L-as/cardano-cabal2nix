{ sources }:

{ mkDerivation, aeson, aeson-pretty, async, base, beam-core
, beam-migrate, beam-sqlite, bytestring, cardano-addresses
, cardano-api, cardano-cli, cardano-node, cardano-slotting
, cardano-wallet, cardano-wallet-cli, cardano-wallet-core
, cardano-wallet-core-integration, cardano-wallet-launcher, clock
, containers, contra-tracer, cryptonite, data-default, directory
, either, exceptions, filepath, freer-extras, freer-simple
, generic-arbitrary, hedgehog, http-client, http-client-tls
, iohk-monitoring, lens, lib, lobemo-backend-ekg, memory
, monad-logger, mtl, mwc-random, network-mux, openapi3
, optparse-applicative, ouroboros-network
, ouroboros-network-framework, playground-common
, plutus-chain-index, plutus-chain-index-core, plutus-contract
, plutus-ledger, plutus-ledger-api, plutus-tx, plutus-tx-plugin
, plutus-use-cases, pretty-simple, prettyprinter, primitive
, purescript-bridge, QuickCheck, quickcheck-instances, rate-limit
, row-types, servant, servant-client, servant-client-core
, servant-openapi3, servant-options, servant-purescript
, servant-server, servant-swagger-ui, servant-websockets, signal
, smallcheck, sqlite-simple, stm, tagged, tasty, tasty-hedgehog
, tasty-hunit, tasty-quickcheck, tasty-smallcheck, text, text-class
, time, time-units, transformers, unliftio-core
, unordered-containers, uuid, wai, wai-cors, warp, websockets
, Win32-network, yaml
}:
mkDerivation {
  pname = "plutus-pab";
  version = "0.1.0.0";
  src = "${sources.plutus-apps}/plutus-pab";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson aeson-pretty async base beam-core beam-migrate beam-sqlite
    bytestring cardano-api cardano-slotting cardano-wallet-core
    containers contra-tracer cryptonite data-default exceptions
    freer-extras freer-simple generic-arbitrary http-client
    http-client-tls iohk-monitoring lens lobemo-backend-ekg memory
    monad-logger mtl network-mux openapi3 optparse-applicative
    ouroboros-network ouroboros-network-framework playground-common
    plutus-chain-index-core plutus-contract plutus-ledger
    plutus-ledger-api plutus-tx plutus-tx-plugin prettyprinter
    purescript-bridge QuickCheck quickcheck-instances row-types servant
    servant-client servant-openapi3 servant-options servant-purescript
    servant-server servant-swagger-ui servant-websockets sqlite-simple
    stm tagged text text-class time time-units transformers
    unordered-containers uuid wai wai-cors warp websockets
    Win32-network yaml
  ];
  libraryToolDepends = [ cardano-cli cardano-node ];
  executableHaskellDepends = [
    aeson aeson-pretty async base beam-migrate beam-sqlite bytestring
    cardano-addresses cardano-api cardano-slotting cardano-wallet
    cardano-wallet-cli cardano-wallet-core
    cardano-wallet-core-integration cardano-wallet-launcher clock
    containers contra-tracer data-default directory either filepath
    freer-extras freer-simple hedgehog http-client http-client-tls
    iohk-monitoring lens lobemo-backend-ekg monad-logger mtl mwc-random
    openapi3 optparse-applicative playground-common plutus-chain-index
    plutus-chain-index-core plutus-contract plutus-ledger
    plutus-ledger-api plutus-tx plutus-use-cases pretty-simple
    prettyprinter primitive purescript-bridge QuickCheck
    quickcheck-instances rate-limit row-types servant-client
    servant-client-core servant-purescript servant-server signal
    smallcheck sqlite-simple stm tasty tasty-quickcheck
    tasty-smallcheck text text-class time-units transformers
    unliftio-core uuid yaml
  ];
  testHaskellDepends = [
    aeson aeson-pretty async base bytestring cardano-api containers
    data-default freer-extras freer-simple hedgehog http-client
    http-client-tls iohk-monitoring lens monad-logger mtl openapi3
    playground-common plutus-chain-index-core plutus-contract
    plutus-ledger plutus-tx plutus-use-cases prettyprinter
    purescript-bridge QuickCheck quickcheck-instances row-types
    servant-client servant-server smallcheck stm tasty tasty-hedgehog
    tasty-hunit tasty-quickcheck tasty-smallcheck text transformers
    uuid yaml
  ];
  homepage = "https://github.com/iohk/plutus#readme";
  license = lib.licenses.asl20;
}
