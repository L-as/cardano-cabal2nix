{ sources }:

{ mkDerivation, aeson, aeson-pretty, alex, algebraic-graphs, array
, barbies, base, bifunctors, bimap, bytestring, cardano-crypto
, cardano-crypto-class, cassava, cborg, composition-prelude
, containers, criterion, criterion-measurement, cryptonite
, data-default-class, deepseq, dependent-map
, dependent-sum-template, deriving-aeson, deriving-compat
, directory, dlist, dom-lt, exceptions, extra, filepath, flat
, ghc-prim, happy, hashable, hedgehog, HUnit, inline-r, integer-gmp
, lazy-search, lens, lib, megaparsec, mmorph, monoidal-containers
, mtl, optparse-applicative, parser-combinators, prettyprinter
, prettyprinter-configurable, primitive, QuickCheck
, quickcheck-instances, ral, random, recursion-schemes
, semigroupoids, semigroups, serialise, size-based, some, sop-core
, split, Stream, tasty, tasty-golden, tasty-hedgehog, tasty-hunit
, tasty-quickcheck, template-haskell, test-framework
, test-framework-hunit, test-framework-quickcheck2, text, th-lift
, th-lift-instances, th-utilities, time, transformers
, unordered-containers, vector, witherable, word-array
}:
mkDerivation {
  pname = "plutus-core";
  version = "0.1.0.0";
  src = "${sources.plutus}/plutus-core";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson algebraic-graphs array barbies base bifunctors bimap
    bytestring cardano-crypto cardano-crypto-class cassava cborg
    composition-prelude containers cryptonite data-default-class
    deepseq dependent-map dependent-sum-template deriving-aeson
    deriving-compat dlist dom-lt exceptions extra filepath flat
    ghc-prim hashable hedgehog integer-gmp lazy-search lens megaparsec
    mmorph monoidal-containers mtl parser-combinators prettyprinter
    prettyprinter-configurable primitive ral recursion-schemes
    semigroupoids semigroups serialise size-based some sop-core Stream
    tasty tasty-golden tasty-hedgehog tasty-hunit template-haskell text
    th-lift th-lift-instances th-utilities time transformers
    unordered-containers witherable word-array
  ];
  libraryToolDepends = [ alex happy ];
  executableHaskellDepends = [
    aeson base bytestring cassava containers deepseq flat integer-gmp
    lens monoidal-containers mtl optparse-applicative prettyprinter
    split text transformers vector
  ];
  testHaskellDepends = [
    aeson base bytestring containers filepath flat hedgehog HUnit lens
    megaparsec mmorph mtl prettyprinter QuickCheck tasty tasty-golden
    tasty-hedgehog tasty-hunit tasty-quickcheck template-haskell
    test-framework test-framework-hunit test-framework-quickcheck2 text
    th-lift-instances th-utilities transformers
  ];
  benchmarkHaskellDepends = [
    aeson-pretty barbies base bytestring cassava criterion
    criterion-measurement deepseq directory exceptions extra hedgehog
    inline-r mmorph mtl optparse-applicative QuickCheck
    quickcheck-instances ral random text vector
  ];
  doHaddock = false;
  description = "Language library for Plutus Core";
  license = lib.licenses.asl20;
}
