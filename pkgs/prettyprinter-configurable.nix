{ sources }:

{ mkDerivation, base, Cabal, cabal-doctest, doctest, lib
, megaparsec, microlens, mtl, parser-combinators, prettyprinter
, QuickCheck, quickcheck-text, tasty, tasty-hunit, tasty-quickcheck
, text
}:
mkDerivation {
  pname = "prettyprinter-configurable";
  version = "0.1.0.0";
  src = "${sources.plutus}/prettyprinter-configurable";
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [ base microlens mtl prettyprinter text ];
  testHaskellDepends = [
    base doctest megaparsec parser-combinators prettyprinter QuickCheck
    quickcheck-text tasty tasty-hunit tasty-quickcheck text
  ];
  license = "unknown";
  hydraPlatforms = lib.platforms.none;
}
