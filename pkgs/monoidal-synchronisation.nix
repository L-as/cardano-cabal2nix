{ sources }:

{ mkDerivation, base, io-classes, io-sim, lib, QuickCheck, tasty
, tasty-quickcheck
}:
mkDerivation {
  pname = "monoidal-synchronisation";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/monoidal-synchronisation";
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [
    base io-classes io-sim QuickCheck tasty tasty-quickcheck
  ];
  license = lib.licenses.asl20;
}
