{ sources }:

{ mkDerivation, async, base, bytestring, cardano-prelude, cborg
, containers, contra-tracer, directory, dns, hashable, io-classes
, io-sim, iproute, lib, monoidal-synchronisation, mtl, network
, network-mux, nothunks, optparse-applicative
, ouroboros-network-testing, pretty-simple, QuickCheck
, quickcheck-instances, quiet, random, serialise, stm, tasty
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
    monoidal-synchronisation mtl network network-mux nothunks quiet
    random stm text time typed-protocols typed-protocols-cborg
    Win32-network
  ];
  executableHaskellDepends = [
    async base bytestring cborg contra-tracer directory io-classes
    network network-mux optparse-applicative random serialise
    typed-protocols typed-protocols-examples
  ];
  testHaskellDepends = [
    base bytestring cardano-prelude cborg containers contra-tracer
    directory dns io-classes io-sim iproute monoidal-synchronisation
    network network-mux ouroboros-network-testing pretty-simple
    QuickCheck quickcheck-instances quiet serialise tasty
    tasty-quickcheck text time typed-protocols typed-protocols-cborg
    typed-protocols-examples
  ];
  license = lib.licenses.asl20;
}
