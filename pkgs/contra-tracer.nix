{ sources }:

{ mkDerivation, base, lib }:
mkDerivation {
  pname = "contra-tracer";
  version = "0.1.0.0";
  src = "${sources.iohk-monitoring-framework}/contra-tracer";
  libraryHaskellDepends = [ base ];
  description = "A simple interface for logging, tracing or monitoring";
  license = lib.licenses.asl20;
}
