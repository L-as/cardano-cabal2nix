{ sources }:

{ mkDerivation, aeson, async, base, bytestring, ekg, ekg-core
, iohk-monitoring, lib, safe-exceptions, snap-core, snap-server
, stm, text, time, unordered-containers
}:
mkDerivation {
  pname = "lobemo-backend-ekg";
  version = "0.1.0.1";
  src = "${sources.iohk-monitoring-framework}/plugins/backend-ekg";
  libraryHaskellDepends = [
    aeson async base bytestring ekg ekg-core iohk-monitoring
    safe-exceptions snap-core snap-server stm text time
    unordered-containers
  ];
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "provides a backend implementation to EKG";
  license = lib.licenses.asl20;
}
