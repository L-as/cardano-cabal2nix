{ sources }:

{ mkDerivation, aeson, base, lib, QuickCheck, tasty
, tasty-quickcheck, text, trace-dispatcher, unix
}:
mkDerivation {
  pname = "trace-resources";
  version = "0.1.0.0";
  src = "${sources.cardano-node}/trace-resources";
  libraryHaskellDepends = [ aeson base text trace-dispatcher unix ];
  testHaskellDepends = [
    aeson base QuickCheck tasty tasty-quickcheck text trace-dispatcher
  ];
  description = "Package for tracing resources for linux, mac and windows";
  license = "unknown";
  hydraPlatforms = lib.platforms.none;
}
