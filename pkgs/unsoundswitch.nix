{ sources }:

{ mkDerivation, base, lib, logfloat, statistics }:
mkDerivation {
  pname = "unsoundswitch";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-consensus/docs/report/unsoundswitch";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base logfloat statistics ];
  license = "unknown";
  hydraPlatforms = lib.platforms.none;
}
