{ sources }:

{ mkDerivation, array, base, containers, exceptions, io-classes
, lib, psqueues, QuickCheck, quiet, tasty, tasty-quickcheck, time
}:
mkDerivation {
  pname = "io-sim";
  version = "0.2.0.0";
  src = "${sources.ouroboros-network}/io-sim";
  libraryHaskellDepends = [
    base containers exceptions io-classes psqueues quiet time
  ];
  testHaskellDepends = [
    array base containers io-classes QuickCheck tasty tasty-quickcheck
    time
  ];
  description = "A pure simlator for monadic concurrency with STM";
  license = lib.licenses.asl20;
}
