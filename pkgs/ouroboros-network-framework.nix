{ sources }:

{ mkDerivation, async, base, bytestring, cardano-prelude, cborg
, containers, contra-tracer, directory, dns, hashable, io-classes
, io-sim, iproute, lib, monoidal-synchronisation, mtl, network
, network-mux, nothunks, QuickCheck, quiet, serialise, stm, tasty
, tasty-quickcheck, text, time, typed-protocols
, typed-protocols-cborg, typed-protocols-examples, Win32-network
}:
mkDerivation {
  pname = "ouroboros-network-framework";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-network-framework";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    async base bytestring cardano-prelude cborg containers
    contra-tracer dns hashable io-classes iproute
    monoidal-synchronisation mtl network network-mux nothunks quiet stm
    text time typed-protocols typed-protocols-cborg Win32-network
  ];
  executableHaskellDepends = [
    async base bytestring cborg contra-tracer directory io-classes
    network-mux typed-protocols typed-protocols-examples
  ];
  testHaskellDepends = [
    base bytestring cborg containers contra-tracer directory dns
    io-classes io-sim iproute network network-mux QuickCheck serialise
    tasty tasty-quickcheck time typed-protocols typed-protocols-cborg
    typed-protocols-examples
  ];
  license = lib.licenses.asl20;
}
