{ sources }:

{ mkDerivation, aeson, async, base, bytestring, directory
, iohk-monitoring, lib, network, safe-exceptions, stm, text, time
, unix, unix-compat
}:
mkDerivation {
  pname = "lobemo-backend-trace-acceptor";
  version = "0.1.0.0";
  src = "${sources.iohk-monitoring-framework}/plugins/backend-trace-acceptor";
  libraryHaskellDepends = [
    aeson async base bytestring directory iohk-monitoring network
    safe-exceptions stm text time unix unix-compat
  ];
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "a trace acceptor backend";
  license = lib.licenses.asl20;
}
