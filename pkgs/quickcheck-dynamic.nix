{ sources }:

{ mkDerivation, base, lib, QuickCheck, random, tasty
, tasty-quickcheck
}:
mkDerivation {
  pname = "quickcheck-dynamic";
  version = "0.1.0.0";
  src = "${sources.plutus-apps}/quickcheck-dynamic";
  libraryHaskellDepends = [ base QuickCheck random ];
  testHaskellDepends = [ base QuickCheck tasty tasty-quickcheck ];
  homepage = "https://github.com/iohk/plutus#readme";
  license = lib.licenses.asl20;
}
