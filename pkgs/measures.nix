{ sources }:

{ mkDerivation, base, base-deriving-via, lib, QuickCheck, tasty
, tasty-quickcheck
}:
mkDerivation {
  pname = "measures";
  version = "0.1.0.0";
  src = "${sources.cardano-base}/measures";
  libraryHaskellDepends = [ base base-deriving-via ];
  testHaskellDepends = [ base QuickCheck tasty tasty-quickcheck ];
  description = "An abstraction for (tuples of) measured quantities";
  license = lib.licenses.asl20;
}
