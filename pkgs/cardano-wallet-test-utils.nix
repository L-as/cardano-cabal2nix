{ sources }:

{ mkDerivation, aeson, base, containers, contra-tracer, directory
, either, file-embed, filepath, fmt, formatting, hspec, hspec-core
, hspec-discover, hspec-expectations, hspec-expectations-lifted
, hspec-golden-aeson, http-api-data, HUnit, int-cast
, iohk-monitoring, lattices, lib, optparse-applicative
, pretty-simple, QuickCheck, quickcheck-classes, say, silently
, template-haskell, text, text-class, time, unliftio, unliftio-core
, wai-app-static, warp
}:
mkDerivation {
  pname = "cardano-wallet-test-utils";
  version = "2021.9.29";
  src = "${sources.cardano-wallet}/lib/test-utils";
  libraryHaskellDepends = [
    aeson base containers contra-tracer directory either file-embed
    filepath fmt formatting hspec hspec-core hspec-expectations
    hspec-golden-aeson http-api-data HUnit int-cast iohk-monitoring
    lattices optparse-applicative pretty-simple QuickCheck
    quickcheck-classes say template-haskell text text-class time
    unliftio unliftio-core wai-app-static warp
  ];
  testHaskellDepends = [
    base fmt hspec hspec-core hspec-expectations-lifted QuickCheck
    silently unliftio unliftio-core
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/input-output-hk/cardano-wallet";
  description = "Shared utilities for writing unit and property tests";
  license = lib.licenses.asl20;
}
