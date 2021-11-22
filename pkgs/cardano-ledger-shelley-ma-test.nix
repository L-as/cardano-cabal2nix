{ sources }:

{ mkDerivation, base, base16-bytestring, bytestring, cardano-binary
, cardano-crypto-class, cardano-ledger-core, cardano-ledger-pretty
, cardano-ledger-shelley, cardano-ledger-shelley-ma
, cardano-ledger-shelley-test, cardano-slotting, cborg, containers
, data-default-class, generic-random, hashable, lib, mtl
, QuickCheck, small-steps, small-steps-test, strict-containers
, tasty, tasty-hunit, tasty-quickcheck, text
}:
mkDerivation {
  pname = "cardano-ledger-shelley-ma-test";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/eras/shelley-ma/test-suite";
  libraryHaskellDepends = [
    base base16-bytestring bytestring cardano-binary
    cardano-crypto-class cardano-ledger-core cardano-ledger-pretty
    cardano-ledger-shelley cardano-ledger-shelley-ma
    cardano-ledger-shelley-test cardano-slotting cborg containers
    generic-random hashable mtl QuickCheck small-steps
    strict-containers tasty tasty-hunit tasty-quickcheck text
  ];
  testHaskellDepends = [
    base bytestring cardano-binary cardano-ledger-core
    cardano-ledger-shelley cardano-ledger-shelley-ma
    cardano-ledger-shelley-test cardano-slotting cborg containers
    data-default-class mtl QuickCheck small-steps small-steps-test
    strict-containers tasty tasty-hunit tasty-quickcheck
  ];
  description = "Shelley ledger with multiasset and time lock support";
  license = lib.licenses.asl20;
}
