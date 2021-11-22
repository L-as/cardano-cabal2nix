{ sources }:

{ mkDerivation, aeson, async, base, bytestring, contra-tracer
, criterion, download, iohk-monitoring, iproute, lib
, lobemo-backend-aggregation, lobemo-backend-editor
, lobemo-backend-ekg, lobemo-backend-monitoring
, lobemo-backend-trace-acceptor, lobemo-backend-trace-forwarder
, lobemo-scribe-systemd, mtl, network, optparse-applicative, random
, serialise, text, tracer-transformers, unix, unordered-containers
}:
mkDerivation {
  pname = "lobemo-examples";
  version = "0.1.0.0";
  src = "${sources.iohk-monitoring-framework}/examples";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson async base bytestring contra-tracer criterion download
    iohk-monitoring iproute lobemo-backend-aggregation
    lobemo-backend-editor lobemo-backend-ekg lobemo-backend-monitoring
    lobemo-backend-trace-acceptor lobemo-backend-trace-forwarder
    lobemo-scribe-systemd mtl network optparse-applicative random
    serialise text tracer-transformers unix unordered-containers
  ];
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "examples of logging, benchmarking, and monitoring";
  license = lib.licenses.asl20;
}
