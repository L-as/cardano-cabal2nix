{ sources }:

{ mkDerivation, base, cborg, contra-tracer, io-classes, io-sim, lib
, QuickCheck, serialise
}:
mkDerivation {
  pname = "ouroboros-network-testing";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-network-testing";
  libraryHaskellDepends = [
    base cborg contra-tracer io-classes io-sim QuickCheck serialise
  ];
  description = "Common modules used for testing in ouroboros-network and ouroboros-consensus";
  license = lib.licenses.asl20;
}
