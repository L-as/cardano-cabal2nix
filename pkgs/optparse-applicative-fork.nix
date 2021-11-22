{ sources }:

{ mkDerivation, ansi-terminal, base, lib, prettyprinter, process
, QuickCheck, text, transformers, transformers-compat
}:
mkDerivation {
  pname = "optparse-applicative";
  version = "0.16.1.0";
  src = "${sources.optparse-applicative}";
  libraryHaskellDepends = [
    ansi-terminal base prettyprinter process text transformers
    transformers-compat
  ];
  testHaskellDepends = [ base QuickCheck ];
  homepage = "https://github.com/pcapriotti/optparse-applicative";
  description = "Utilities and combinators for parsing command line options";
  license = lib.licenses.bsd3;
}
