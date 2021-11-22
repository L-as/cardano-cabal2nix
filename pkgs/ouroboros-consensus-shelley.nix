{ sources }:

{ mkDerivation, base, base-deriving-via, bytestring, cardano-binary
, cardano-crypto-class, cardano-ledger-alonzo, cardano-ledger-core
, cardano-ledger-shelley, cardano-ledger-shelley-ma
, cardano-prelude, cardano-protocol-tpraos, cardano-slotting, cborg
, containers, data-default-class, deepseq, lib, measures, mtl
, nothunks, orphans-deriving-via, ouroboros-consensus
, ouroboros-network, serialise, small-steps, strict-containers
, text, transformers
}:
mkDerivation {
  pname = "ouroboros-consensus-shelley";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-consensus-shelley";
  libraryHaskellDepends = [
    base base-deriving-via bytestring cardano-binary
    cardano-crypto-class cardano-ledger-alonzo cardano-ledger-core
    cardano-ledger-shelley cardano-ledger-shelley-ma cardano-prelude
    cardano-protocol-tpraos cardano-slotting cborg containers
    data-default-class deepseq measures mtl nothunks
    orphans-deriving-via ouroboros-consensus ouroboros-network
    serialise small-steps strict-containers text transformers
  ];
  description = "Shelley ledger integration in the Ouroboros consensus layer";
  license = lib.licenses.asl20;
}
