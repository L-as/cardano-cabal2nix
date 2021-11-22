{ sources }:

{ mkDerivation, aeson, async, base, bytestring, cborg, containers
, contra-tracer, ekg, ekg-core, ekg-forward, hostname, lib, network
, ouroboros-network-framework, QuickCheck, serialise, stm, tasty
, tasty-quickcheck, text, time, trace-forward, unagi-chan, unix
, unliftio, unliftio-core, unordered-containers, yaml
}:
mkDerivation {
  pname = "trace-dispatcher";
  version = "1.29.0";
  src = "${sources.cardano-node}/trace-dispatcher";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson async base bytestring cborg containers contra-tracer ekg
    ekg-core ekg-forward hostname network ouroboros-network-framework
    serialise stm text time trace-forward unagi-chan unix unliftio
    unliftio-core unordered-containers yaml
  ];
  executableHaskellDepends = [
    aeson base bytestring containers ekg ekg-core hostname stm text
    time unagi-chan unliftio unliftio-core unordered-containers yaml
  ];
  testHaskellDepends = [
    aeson base bytestring containers ekg ekg-core hostname QuickCheck
    stm tasty tasty-quickcheck text time unagi-chan unliftio
    unliftio-core unordered-containers yaml
  ];
  description = "Package for development of simple and efficient tracers based on the arrow based contra-tracer package";
  license = "unknown";
  hydraPlatforms = lib.platforms.none;
}
