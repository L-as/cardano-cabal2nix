{ sources }:

{ mkDerivation, aeson, async, base, bytestring, hw-kafka-client
, iohk-monitoring, lib, safe-exceptions, stm, text
}:
mkDerivation {
  pname = "lobemo-backend-kafka";
  version = "0.1.0.0";
  src = "${sources.iohk-monitoring-framework}/plugins/backend-kafka";
  libraryHaskellDepends = [
    aeson async base bytestring hw-kafka-client iohk-monitoring
    safe-exceptions stm text
  ];
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "provides a backend implementation to Kafka";
  license = lib.licenses.asl20;
}
