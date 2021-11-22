{ sources }:

{ mkDerivation, aeson, base, bytestring, containers, directory
, filepath, generic-deriving, hspec, hspec-expectations-pretty-diff
, HUnit, lens, lib, mtl, process, QuickCheck, text, transformers
, utf8-string, wl-pprint-text
}:
mkDerivation {
  pname = "purescript-bridge";
  version = "0.14.0.0";
  src = "${sources.purescript-bridge}";
  libraryHaskellDepends = [
    base containers directory filepath generic-deriving lens mtl text
    transformers wl-pprint-text
  ];
  testHaskellDepends = [
    aeson base bytestring containers directory hspec
    hspec-expectations-pretty-diff HUnit process QuickCheck text
    utf8-string wl-pprint-text
  ];
  description = "Generate PureScript data types from Haskell data types";
  license = lib.licenses.bsd3;
}
