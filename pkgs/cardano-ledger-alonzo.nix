{ sources }:

{ mkDerivation, array, base, base-deriving-via, base64-bytestring
, bytestring, cardano-binary, cardano-crypto-class
, cardano-ledger-core, cardano-ledger-shelley
, cardano-ledger-shelley-ma, cardano-prelude
, cardano-protocol-tpraos, cardano-slotting, containers
, data-default, deepseq, lib, measures, mtl, nothunks, plutus-core
, plutus-ledger-api, plutus-tx, prettyprinter, serialise
, small-steps, strict-containers, text, time, transformers
, utf8-string
}:
mkDerivation {
  pname = "cardano-ledger-alonzo";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/eras/alonzo/impl";
  libraryHaskellDepends = [
    array base base-deriving-via base64-bytestring bytestring
    cardano-binary cardano-crypto-class cardano-ledger-core
    cardano-ledger-shelley cardano-ledger-shelley-ma cardano-prelude
    cardano-protocol-tpraos cardano-slotting containers data-default
    deepseq measures mtl nothunks plutus-core plutus-ledger-api
    plutus-tx prettyprinter serialise small-steps strict-containers
    text time transformers utf8-string
  ];
  description = "Cardano ledger introducing Plutus Core";
  license = lib.licenses.asl20;
}
