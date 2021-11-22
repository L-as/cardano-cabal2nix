{ sources }:

{ mkDerivation, aeson, async, base, bytestring, iohk-monitoring
, lib, network, safe-exceptions, stm, text, time
}:
mkDerivation {
  pname = "lobemo-backend-graylog";
  version = "0.1.0.0";
  src = "${sources.iohk-monitoring-framework}/plugins/backend-graylog";
  libraryHaskellDepends = [
    aeson async base bytestring iohk-monitoring network safe-exceptions
    stm text time
  ];
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "provides a backend implementation to Graylog";
  license = lib.licenses.asl20;
}
