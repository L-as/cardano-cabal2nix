{ sources }:

{ mkDerivation, aeson, array, base, binary, bytestring, cborg
, containers, contra-tracer, directory, io-classes, io-sim, lib
, monoidal-synchronisation, network, process, QuickCheck, quiet
, serialise, splitmix, statistics-linreg, stm, tasty, Win32-network
, tasty-quickcheck, tdigest, text, time, vector
}:
mkDerivation {
  pname = "network-mux";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/network-mux";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    array base binary bytestring containers contra-tracer io-classes
    monoidal-synchronisation network process quiet statistics-linreg
    time vector
  ];
  executableHaskellDepends = [
    aeson base bytestring cborg contra-tracer directory io-classes
    network serialise stm tdigest text
  ];
  testHaskellDepends = [
    base binary bytestring cborg containers contra-tracer io-classes
    io-sim network process QuickCheck serialise splitmix tasty
    tasty-quickcheck time Win32-network
  ];
  description = "Multiplexing library";
  license = lib.licenses.asl20;
}
