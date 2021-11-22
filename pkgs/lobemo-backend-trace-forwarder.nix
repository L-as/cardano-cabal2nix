{ sources }:

{ mkDerivation, aeson, async, base, bytestring, iohk-monitoring
, lib, network, safe-exceptions, stm, text, time, unix-compat
}:
mkDerivation {
  pname = "lobemo-backend-trace-forwarder";
  version = "0.1.0.0";
  src = "${sources.iohk-monitoring-framework}/plugins/backend-trace-forwarder";
  libraryHaskellDepends = [
    aeson async base bytestring iohk-monitoring network safe-exceptions
    stm text time unix-compat
  ];
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "this backend forwards log items to a trace acceptor";
  license = lib.licenses.asl20;
}
