{ sources }:

{ mkDerivation, aeson, base, cardano-binary, cborg, containers
, data-default-class, deepseq, fingertree, lib, nothunks, serialise
}:
mkDerivation {
  pname = "strict-containers";
  version = "0.1.0.0";
  src = "${sources.cardano-base}/strict-containers";
  libraryHaskellDepends = [
    aeson base cardano-binary cborg containers data-default-class
    deepseq fingertree nothunks serialise
  ];
  description = "Various strict container types";
  license = lib.licenses.asl20;
}
