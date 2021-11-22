{ sources }:

{ mkDerivation, base, BNFC-meta, containers, criterion, lib, mtl
, QuickCheck, random
}:
mkDerivation {
  pname = "fomega";
  version = "0.1.0.0";
  src = "${sources.plutus}/notes/fomega";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base BNFC-meta containers criterion mtl QuickCheck random
  ];
  executableHaskellDepends = [
    base BNFC-meta containers criterion mtl QuickCheck random
  ];
  testHaskellDepends = [
    base BNFC-meta containers criterion mtl QuickCheck random
  ];
  benchmarkHaskellDepends = [
    base BNFC-meta containers criterion mtl QuickCheck random
  ];
  homepage = "https://github.com/githubuser/fomega#readme";
  license = lib.licenses.bsd3;
}
