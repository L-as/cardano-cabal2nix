{ sources }:

{ mkDerivation, base, bytestring, cborg, contra-tracer, io-classes
, io-sim, lib, QuickCheck, serialise, tasty, tasty-quickcheck, time
, typed-protocols, typed-protocols-cborg
}:
mkDerivation {
  pname = "typed-protocols-examples";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/typed-protocols-examples";
  libraryHaskellDepends = [
    base bytestring cborg contra-tracer io-classes serialise time
    typed-protocols typed-protocols-cborg
  ];
  testHaskellDepends = [
    base bytestring contra-tracer io-classes io-sim QuickCheck tasty
    tasty-quickcheck typed-protocols typed-protocols-cborg
  ];
  description = "Examples and tests for the typed-protocols framework";
  license = lib.licenses.asl20;
}
