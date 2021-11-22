{ sources }:

{ mkDerivation, base, bimap, bytestring, cardano-binary
, cardano-crypto-class, cardano-slotting, cborg, containers
, deepseq, hashable, lib, mtl, nothunks, ouroboros-consensus
, ouroboros-network, serialise, time
}:
mkDerivation {
  pname = "ouroboros-consensus-mock";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-consensus-mock";
  libraryHaskellDepends = [
    base bimap bytestring cardano-binary cardano-crypto-class
    cardano-slotting cborg containers deepseq hashable mtl nothunks
    ouroboros-consensus ouroboros-network serialise time
  ];
  description = "Mock ledger integration in the Ouroboros consensus layer";
  license = lib.licenses.asl20;
}
