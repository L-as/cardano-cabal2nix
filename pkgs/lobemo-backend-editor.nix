{ sources }:

{ mkDerivation, aeson, async, base, bytestring, directory, filepath
, iohk-monitoring, lib, safe, safe-exceptions, text, threepenny-gui
, time, unix, unordered-containers
}:
mkDerivation {
  pname = "lobemo-backend-editor";
  version = "0.1.0.0";
  src = "${sources.iohk-monitoring-framework}/plugins/backend-editor";
  libraryHaskellDepends = [
    aeson async base bytestring directory filepath iohk-monitoring safe
    safe-exceptions text threepenny-gui time unix unordered-containers
  ];
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "provides a backend implementation to interactively manage configuration";
  license = lib.licenses.asl20;
}
