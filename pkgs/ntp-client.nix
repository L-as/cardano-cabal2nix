{ sources }:

{ mkDerivation, async, base, binary, bytestring, contra-tracer, lib
, network, QuickCheck, stm, tasty, tasty-quickcheck, time
, Win32-network
}:
mkDerivation {
  pname = "ntp-client";
  version = "0.0.1";
  src = "${sources.ouroboros-network}/ntp-client";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    async base binary bytestring contra-tracer network stm time
    Win32-network
  ];
  executableHaskellDepends = [
    async base contra-tracer Win32-network
  ];
  testHaskellDepends = [
    base binary QuickCheck tasty tasty-quickcheck time
  ];
  license = lib.licenses.asl20;
}
