{ sources }:

{ mkDerivation, base, lib }:
mkDerivation {
  pname = "Win32-network";
  version = "0.1.0.0";
  src = "${sources.Win32-network}";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base ];
  executableHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  description = "Win32 network API";
  license = lib.licenses.asl20;
}
