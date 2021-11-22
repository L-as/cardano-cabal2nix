{ sources }:

{ mkDerivation, async, base, bytestring, cborg, contra-tracer
, directory, extra, filepath, io-classes, lib
, ouroboros-network-framework, QuickCheck, serialise, stm, tasty
, tasty-quickcheck, text, time, typed-protocols
, typed-protocols-cborg
}:
mkDerivation {
  pname = "trace-forward";
  version = "0.1.0";
  src = "${sources.cardano-node}/trace-forward";
  libraryHaskellDepends = [
    async base bytestring cborg contra-tracer extra io-classes
    ouroboros-network-framework serialise stm text time typed-protocols
    typed-protocols-cborg
  ];
  testHaskellDepends = [
    async base contra-tracer directory extra filepath
    ouroboros-network-framework QuickCheck serialise tasty
    tasty-quickcheck text time typed-protocols
  ];
  description = "See README for more info";
  license = lib.licenses.asl20;
}
