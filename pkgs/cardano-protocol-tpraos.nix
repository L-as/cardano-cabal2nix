{ sources }:

{ mkDerivation, base, bytestring, cardano-binary
, cardano-crypto-class, cardano-ledger-core, cardano-slotting
, containers, deepseq, lib, mtl, non-integral, nothunks, quiet
, small-steps, transformers
}:
mkDerivation {
  pname = "cardano-protocol-tpraos";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/libs/cardano-protocol-tpraos";
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-crypto-class
    cardano-ledger-core cardano-slotting containers deepseq mtl
    non-integral nothunks quiet small-steps transformers
  ];
  license = lib.licenses.asl20;
}
