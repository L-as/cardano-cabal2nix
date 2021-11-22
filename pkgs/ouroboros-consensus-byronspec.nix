{ sources }:

{ mkDerivation, base, bimap, byron-spec-chain, byron-spec-ledger
, cardano-binary, cardano-ledger-byron-test, cardano-slotting
, cborg, containers, lib, mtl, nothunks, ouroboros-consensus
, ouroboros-network, serialise, small-steps, transformers
}:
mkDerivation {
  pname = "ouroboros-consensus-byronspec";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-consensus-byronspec";
  libraryHaskellDepends = [
    base bimap byron-spec-chain byron-spec-ledger cardano-binary
    cardano-ledger-byron-test cardano-slotting cborg containers mtl
    nothunks ouroboros-consensus ouroboros-network serialise
    small-steps transformers
  ];
  description = "ByronSpec ledger integration in the Ouroboros consensus layer";
  license = lib.licenses.asl20;
}
