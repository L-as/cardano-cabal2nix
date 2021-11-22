{ sources }:

{ mkDerivation, base, casing, extra, formatting, hspec
, hspec-discover, lib, OddWord, QuickCheck, text, time
}:
mkDerivation {
  pname = "text-class";
  version = "2021.9.29";
  src = "${sources.cardano-wallet}/lib/text-class";
  libraryHaskellDepends = [
    base casing extra formatting hspec OddWord QuickCheck text time
  ];
  testHaskellDepends = [ base hspec QuickCheck text time ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/input-output-hk/cardano-wallet";
  description = "Extra helpers to convert data-types to and from Text";
  license = lib.licenses.asl20;
}
