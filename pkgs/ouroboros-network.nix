{ sources }:

{ mkDerivation, aeson, array, async, base, base16-bytestring
, bytestring, cardano-binary, cardano-prelude, cardano-slotting
, cborg, containers, contra-tracer, deepseq, deque, directory, dns
, filepath, fingertree, hashable, io-classes, io-sim, iproute, lib
, monoidal-synchronisation, mtl, network, network-mux, nothunks
, ouroboros-network-framework, ouroboros-network-testing, pipes
, process, process-extras, psqueues, QuickCheck
, quickcheck-instances, random, serialise, stm, strict-containers
, tasty, tasty-hunit, tasty-quickcheck, temporary, text, time
, typed-protocols, typed-protocols-cborg, typed-protocols-examples
}:
mkDerivation {
  pname = "ouroboros-network";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-network";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson async base base16-bytestring bytestring cardano-binary
    cardano-prelude cardano-slotting cborg containers contra-tracer
    deepseq directory dns fingertree hashable io-classes io-sim iproute
    monoidal-synchronisation network network-mux nothunks
    ouroboros-network-framework pipes psqueues QuickCheck random
    serialise strict-containers tasty tasty-quickcheck text time
    typed-protocols typed-protocols-cborg
  ];
  executableHaskellDepends = [
    async base bytestring containers contra-tracer directory
    network-mux ouroboros-network-framework random serialise stm
    typed-protocols
  ];
  testHaskellDepends = [
    aeson array async base bytestring cardano-prelude cardano-slotting
    cborg containers contra-tracer deque directory dns filepath
    hashable io-classes io-sim iproute mtl network network-mux nothunks
    ouroboros-network-framework ouroboros-network-testing process
    process-extras psqueues QuickCheck quickcheck-instances random
    serialise tasty tasty-hunit tasty-quickcheck temporary text time
    typed-protocols typed-protocols-examples
  ];
  doHaddock = false;
  description = "A networking layer for the Ouroboros blockchain protocol";
  license = lib.licenses.asl20;
}
