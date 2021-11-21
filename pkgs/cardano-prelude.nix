{ sources }:

{ mkDerivation, aeson, array, base, base16-bytestring, bytestring
, canonical-json, cborg, containers, formatting, ghc-heap, ghc-prim
, integer-gmp, lib, mtl, protolude, tagged, text, time, vector
}:
mkDerivation {
  pname = "cardano-prelude";
  version = "0.1.0.0";
  src = "${sources.cardano-prelude}/cardano-prelude";
  libraryHaskellDepends = [
    aeson array base base16-bytestring bytestring canonical-json cborg
    containers formatting ghc-heap ghc-prim integer-gmp mtl protolude
    tagged text time vector
  ];
  description = "A Prelude replacement for the Cardano project";
  license = lib.licenses.mit;
}
