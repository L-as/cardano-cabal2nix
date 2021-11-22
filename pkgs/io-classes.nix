{ sources }:

{ mkDerivation, async, base, bytestring, lib, mtl, QuickCheck, stm
, tasty, tasty-quickcheck, time
}:
mkDerivation {
  pname = "io-classes";
  version = "0.2.0.0";
  src = "${sources.ouroboros-network}/io-classes";
  libraryHaskellDepends = [ async base bytestring mtl stm time ];
  testHaskellDepends = [ base QuickCheck tasty tasty-quickcheck ];
  description = "Type classes for concurrency with STM, ST and timing";
  license = lib.licenses.asl20;
}
