{ sources }:

{ mkDerivation, aeson, base, bytestring, cardano-addresses
, cardano-api, cardano-crypto, cardano-crypto-class
, cardano-ledger-alonzo, cardano-ledger-byron, cardano-ledger-core
, cardano-ledger-shelley, cardano-ledger-shelley-ma
, cardano-wallet-core, cborg, containers, cryptonite, data-default
, deepseq, freer-extras, hashable, hedgehog, http-api-data
, iohk-monitoring, lens, lib, memory, mtl, openapi3
, ouroboros-consensus-shelley, plutus-core, plutus-ledger-api
, plutus-tx, plutus-tx-plugin, prettyprinter, scientific, serialise
, servant, strict-containers, tasty, tasty-hedgehog, tasty-hunit
, template-haskell, text, time, time-units, transformers
}:
mkDerivation {
  pname = "plutus-ledger";
  version = "0.1.0.0";
  src = "${sources.plutus-apps}/plutus-ledger";
  libraryHaskellDepends = [
    aeson base bytestring cardano-addresses cardano-api cardano-crypto
    cardano-crypto-class cardano-ledger-alonzo cardano-ledger-byron
    cardano-ledger-core cardano-ledger-shelley
    cardano-ledger-shelley-ma cardano-wallet-core cborg containers
    cryptonite data-default deepseq freer-extras hashable hedgehog
    http-api-data iohk-monitoring lens memory mtl openapi3
    ouroboros-consensus-shelley plutus-core plutus-ledger-api plutus-tx
    plutus-tx-plugin prettyprinter scientific serialise servant
    strict-containers template-haskell text time time-units
    transformers
  ];
  testHaskellDepends = [
    aeson base bytestring containers data-default hedgehog lens
    plutus-core plutus-tx plutus-tx-plugin tasty tasty-hedgehog
    tasty-hunit transformers
  ];
  description = "Wallet API";
  license = lib.licenses.asl20;
}
