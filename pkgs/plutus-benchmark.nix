{ sources }:

{ mkDerivation, ansi-wl-pprint, base, bytestring, criterion
, deepseq, directory, filepath, flat, lib, monoidal-containers, mtl
, optparse-applicative, plutus-core, plutus-tx, plutus-tx-plugin
, tasty, tasty-hunit, tasty-quickcheck, transformers
}:
mkDerivation {
  pname = "plutus-benchmark";
  version = "0.1.0.0";
  src = "${sources.plutus}/plutus-benchmark";
  isLibrary = false;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base criterion deepseq filepath plutus-core plutus-tx
    plutus-tx-plugin transformers
  ];
  executableHaskellDepends = [
    ansi-wl-pprint base bytestring flat monoidal-containers
    optparse-applicative plutus-core plutus-tx
  ];
  testHaskellDepends = [
    base plutus-core plutus-tx tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base bytestring criterion deepseq directory filepath flat mtl
    optparse-applicative plutus-core plutus-tx plutus-tx-plugin
  ];
  doHaddock = false;
  homepage = "https://github.com/iohk/plutus#readme";
  license = lib.licenses.asl20;
}
