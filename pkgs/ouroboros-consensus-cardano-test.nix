{ sources }:

{ mkDerivation, base, bytestring, cardano-crypto-class
, cardano-crypto-wrapper, cardano-ledger-alonzo
, cardano-ledger-alonzo-test, cardano-ledger-byron
, cardano-ledger-core, cardano-ledger-shelley
, cardano-ledger-shelley-test, cardano-protocol-tpraos
, cardano-slotting, cborg, containers, filepath, lib, mtl
, ouroboros-consensus, ouroboros-consensus-byron
, ouroboros-consensus-byron-test, ouroboros-consensus-cardano
, ouroboros-consensus-shelley, ouroboros-consensus-shelley-test
, ouroboros-consensus-test, ouroboros-network, QuickCheck, sop-core
, strict-containers, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "ouroboros-consensus-cardano-test";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-consensus-cardano-test";
  libraryHaskellDepends = [
    base cardano-crypto-class cardano-crypto-wrapper
    cardano-ledger-alonzo cardano-ledger-alonzo-test
    cardano-ledger-byron cardano-ledger-core cardano-ledger-shelley
    cardano-ledger-shelley-test cardano-protocol-tpraos
    cardano-slotting containers mtl ouroboros-consensus
    ouroboros-consensus-byron ouroboros-consensus-byron-test
    ouroboros-consensus-cardano ouroboros-consensus-shelley
    ouroboros-consensus-shelley-test ouroboros-consensus-test
    ouroboros-network QuickCheck sop-core strict-containers
  ];
  testHaskellDepends = [
    base bytestring cardano-crypto-class cardano-ledger-alonzo
    cardano-ledger-byron cardano-ledger-core cardano-ledger-shelley
    cardano-protocol-tpraos cardano-slotting cborg containers filepath
    ouroboros-consensus ouroboros-consensus-byron
    ouroboros-consensus-byron-test ouroboros-consensus-cardano
    ouroboros-consensus-shelley ouroboros-consensus-shelley-test
    ouroboros-consensus-test ouroboros-network QuickCheck sop-core
    tasty tasty-quickcheck
  ];
  description = "Test of the instantation of the Ouroboros consensus layer used by Cardano";
  license = lib.licenses.asl20;
}
