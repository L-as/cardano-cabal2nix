{ sources }:

{ mkDerivation, base, bytestring, cardano-binary
, cardano-crypto-class, cardano-ledger-alonzo, cardano-ledger-core
, cardano-ledger-shelley, cardano-ledger-shelley-ma, cborg
, compact-map, conduit, containers, deepseq, foldl, lib
, optparse-applicative, persistent, persistent-sqlite
, persistent-template, prettyprinter, small-steps
, strict-containers, text, transformers, vector, weigh
}:
mkDerivation {
  pname = "ledger-state";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/libs/ledger-state";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-crypto-class
    cardano-ledger-alonzo cardano-ledger-core cardano-ledger-shelley
    cardano-ledger-shelley-ma cborg compact-map conduit containers
    deepseq foldl persistent persistent-sqlite persistent-template
    prettyprinter small-steps strict-containers text transformers
    vector
  ];
  executableHaskellDepends = [
    base cardano-ledger-shelley optparse-applicative text
  ];
  benchmarkHaskellDepends = [
    base deepseq optparse-applicative text weigh
  ];
  license = lib.licenses.asl20;
}
