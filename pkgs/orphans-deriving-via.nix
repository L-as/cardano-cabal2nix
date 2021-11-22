{ sources }:

{ mkDerivation, base, base-deriving-via, deepseq, lib, nothunks }:
mkDerivation {
  pname = "orphans-deriving-via";
  version = "0.1.0.0";
  src = "${sources.cardano-base}/orphans-deriving-via";
  libraryHaskellDepends = [
    base base-deriving-via deepseq nothunks
  ];
  description = "Orphan instances for the base-deriving-via hooks";
  license = lib.licenses.asl20;
}
