{ sources }:

{ mkDerivation, async, base, bytestring, cborg, contra-tracer
, ekg-core, hspec, io-classes, lib, network
, ouroboros-network-framework, serialise, stm, text, time
, typed-protocols, typed-protocols-cborg, unordered-containers
}:
mkDerivation {
  pname = "ekg-forward";
  version = "0.1.0";
  src = "${sources.ekg-forward}";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    async base bytestring cborg contra-tracer ekg-core io-classes
    network ouroboros-network-framework serialise stm text time
    typed-protocols typed-protocols-cborg unordered-containers
  ];
  executableHaskellDepends = [
    base contra-tracer ekg-core stm text time
  ];
  testHaskellDepends = [
    base contra-tracer ekg-core hspec stm time unordered-containers
  ];
  homepage = "https://github.com/input-output-hk/ekg-forward";
  description = "See README for more info";
  license = lib.licenses.asl20;
}
