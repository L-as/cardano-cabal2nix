{ sources }:

{ mkDerivation, aeson, base, base16-bytestring, binary, bytestring
, cardano-binary, cardano-crypto, cardano-crypto-class
, cardano-crypto-praos, cardano-crypto-test, cardano-crypto-wrapper
, cardano-ledger-byron, cardano-ledger-byron-test
, cardano-ledger-core, cardano-ledger-pretty
, cardano-ledger-shelley, cardano-prelude, cardano-prelude-test
, cardano-protocol-tpraos, cardano-slotting, cborg, containers
, criterion, data-default-class, deepseq, directory, generic-random
, groups, hashable, hedgehog, hedgehog-quickcheck, iproute, lib
, mtl, nothunks, plutus-ledger-api, prettyprinter, process-extras
, QuickCheck, scientific, serialise, small-steps, small-steps-test
, strict-containers, tasty, tasty-hedgehog, tasty-hunit
, tasty-quickcheck, text, time, transformers, tree-diff, vector
}:
mkDerivation {
  pname = "cardano-ledger-shelley-test";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/eras/shelley/test-suite";
  libraryHaskellDepends = [
    base base16-bytestring bytestring cardano-binary cardano-crypto
    cardano-crypto-class cardano-crypto-test cardano-crypto-wrapper
    cardano-ledger-byron cardano-ledger-byron-test cardano-ledger-core
    cardano-ledger-pretty cardano-ledger-shelley cardano-prelude
    cardano-prelude-test cardano-protocol-tpraos cardano-slotting cborg
    containers data-default-class deepseq directory generic-random
    hashable hedgehog hedgehog-quickcheck iproute mtl nothunks
    plutus-ledger-api process-extras QuickCheck serialise small-steps
    small-steps-test strict-containers tasty tasty-hunit
    tasty-quickcheck text time transformers tree-diff vector
  ];
  testHaskellDepends = [
    aeson base base16-bytestring binary bytestring cardano-binary
    cardano-crypto-class cardano-crypto-praos cardano-ledger-byron
    cardano-ledger-core cardano-ledger-pretty cardano-ledger-shelley
    cardano-prelude cardano-prelude-test cardano-protocol-tpraos
    cardano-slotting cborg containers data-default-class groups
    hedgehog iproute prettyprinter QuickCheck scientific small-steps
    small-steps-test strict-containers tasty tasty-hedgehog tasty-hunit
    tasty-quickcheck time transformers
  ];
  benchmarkHaskellDepends = [
    base cardano-crypto-class cardano-crypto-praos cardano-ledger-core
    cardano-ledger-shelley cardano-prelude cardano-protocol-tpraos
    cardano-slotting containers criterion data-default-class deepseq
    mtl QuickCheck small-steps small-steps-test strict-containers
    transformers
  ];
  license = lib.licenses.asl20;
}
