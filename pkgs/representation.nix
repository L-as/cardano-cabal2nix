{ sources }:

{ mkDerivation, base, lib }:
mkDerivation {
  pname = "representation";
  version = "0.1.0.0";
  src = "${sources.plutus}/notes/untyped-plutus-core/representation";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base ];
  license = "unknown";
  hydraPlatforms = lib.platforms.none;
}
