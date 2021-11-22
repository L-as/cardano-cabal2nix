{ sources }:

{ mkDerivation, array, base, bytestring, containers, deepseq, dlist
, filepath, ghc-prim, hashable, lib, list-t, mono-traversable
, pretty, primitive, QuickCheck, quickcheck-instances
, quickcheck-text, semigroups, tasty, tasty-hunit, tasty-quickcheck
, text, unordered-containers, vector
}:
mkDerivation {
  pname = "flat";
  version = "0.4.5";
  src = "${sources.flat}";
  libraryHaskellDepends = [
    array base bytestring containers deepseq dlist ghc-prim hashable
    list-t mono-traversable pretty primitive QuickCheck
    quickcheck-instances semigroups text unordered-containers vector
  ];
  testHaskellDepends = [
    array base bytestring containers deepseq dlist filepath ghc-prim
    list-t mono-traversable pretty QuickCheck quickcheck-instances
    quickcheck-text tasty tasty-hunit tasty-quickcheck text
    unordered-containers vector
  ];
  homepage = "http://quid2.org";
  description = "Principled and efficient bit-oriented binary serialization";
  license = lib.licenses.bsd3;
}
