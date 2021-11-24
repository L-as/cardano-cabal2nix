{ lib }:

{ mkDerivation, attoparsec, base, base-compat
, base-compat-batteries, base-orphans, base16-bytestring
, bytestring, containers, deepseq, Diff, directory, dlist, filepath
, generic-deriving, ghc-prim, hashable, hashable-time
, integer-logarithms, primitive, QuickCheck, quickcheck-instances
, scientific, tagged, tasty, tasty-golden, tasty-hunit
, tasty-quickcheck, template-haskell, text, th-abstraction, time
, time-compat, unordered-containers, uuid-types, vector
}:
mkDerivation {
  pname = "aeson";
  version = "1.4.7.1";
  sha256 = "1502yjw4y5ggp1gmrx0d3pcgrx3zhwbmcz4jb4fcignrbxjldrq7";
  revision = "2";
  editedCabalFile = "1y1akkdcn5xrspplzgjyj8yz4b4rl1v29dqsx147fnif0y5sk6b1";
  libraryHaskellDepends = [
    attoparsec base base-compat-batteries bytestring containers deepseq
    dlist ghc-prim hashable primitive scientific tagged
    template-haskell text th-abstraction time time-compat
    unordered-containers uuid-types vector
  ];
  testHaskellDepends = [
    attoparsec base base-compat base-orphans base16-bytestring
    bytestring containers Diff directory dlist filepath
    generic-deriving ghc-prim hashable hashable-time integer-logarithms
    QuickCheck quickcheck-instances scientific tagged tasty
    tasty-golden tasty-hunit tasty-quickcheck template-haskell text
    time time-compat unordered-containers uuid-types vector
  ];
  description = "Fast JSON parsing and encoding";
  license = lib.licenses.bsd3;
  hydraPlatforms = lib.platforms.none;
}
