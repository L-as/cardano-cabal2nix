{ sources }:

{ mkDerivation, base, cardano-wallet-test-utils, containers
, deepseq, hashable, hspec, hspec-core, hspec-discover, lib
, QuickCheck, quickcheck-classes, should-not-typecheck
}:
mkDerivation {
  pname = "strict-non-empty-containers";
  version = "2020.12.8";
  src = "${sources.cardano-wallet}/lib/strict-non-empty-containers";
  libraryHaskellDepends = [ base containers deepseq hashable ];
  testHaskellDepends = [
    base cardano-wallet-test-utils containers hspec hspec-core
    QuickCheck quickcheck-classes should-not-typecheck
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/input-output-hk/cardano-wallet";
  description = "Strict non-empty container types";
  license = lib.licenses.asl20;
}
