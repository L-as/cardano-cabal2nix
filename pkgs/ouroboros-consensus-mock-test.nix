{ sources }:

{ mkDerivation, base, bytestring, cardano-crypto-class
, cardano-slotting, cborg, containers, lib, ouroboros-consensus
, ouroboros-consensus-mock, ouroboros-consensus-test
, ouroboros-network, QuickCheck, serialise, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "ouroboros-consensus-mock-test";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-consensus-mock-test";
  libraryHaskellDepends = [
    base bytestring cardano-crypto-class containers ouroboros-consensus
    ouroboros-consensus-mock ouroboros-consensus-test QuickCheck
    serialise
  ];
  testHaskellDepends = [
    base bytestring cardano-slotting cborg containers
    ouroboros-consensus ouroboros-consensus-mock
    ouroboros-consensus-test ouroboros-network QuickCheck serialise
    tasty tasty-quickcheck
  ];
  description = "Tests of the mock ledger integration in the Ouroboros consensus layer";
  license = lib.licenses.asl20;
}
