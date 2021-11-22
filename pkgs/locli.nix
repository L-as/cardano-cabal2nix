{ sources }:

{ mkDerivation, aeson, aeson-pretty, async, attoparsec
, attoparsec-iso8601, base, bytestring, cardano-config
, cardano-prelude, containers, deepseq, directory, file-embed
, filepath, gnuplot, Histogram, iohk-monitoring, lib
, optparse-applicative, optparse-generic, ouroboros-network
, process, quiet, scientific, split, statistics, template-haskell
, text, text-short, time, transformers, transformers-except
, unordered-containers, utf8-string, vector
}:
mkDerivation {
  pname = "locli";
  version = "1.29";
  src = "${sources.cardano-node}/bench/locli";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson aeson-pretty async attoparsec attoparsec-iso8601 base
    bytestring cardano-config cardano-prelude containers deepseq
    directory file-embed filepath gnuplot Histogram iohk-monitoring
    optparse-applicative optparse-generic ouroboros-network
    process quiet scientific split statistics template-haskell text
    text-short time transformers transformers-except
    unordered-containers utf8-string vector
  ];
  executableHaskellDepends = [
    base cardano-prelude optparse-applicative text text-short
    transformers transformers-except
  ];
  license = lib.licenses.asl20;
}
