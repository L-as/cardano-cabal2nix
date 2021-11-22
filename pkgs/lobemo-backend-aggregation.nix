{ sources }:

{ mkDerivation, aeson, async, base, iohk-monitoring, lib
, safe-exceptions, stm, text, time, unix, unordered-containers
}:
mkDerivation {
  pname = "lobemo-backend-aggregation";
  version = "0.1.0.0";
  src = "${sources.iohk-monitoring-framework}/plugins/backend-aggregation";
  libraryHaskellDepends = [
    aeson async base iohk-monitoring safe-exceptions stm text time unix
    unordered-containers
  ];
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "provides a backend implementation to aggregate traced values";
  license = lib.licenses.asl20;
}
