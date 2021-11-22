{ sources }:

{ mkDerivation, base, contra-tracer, lib, safe-exceptions, text
, time
}:
mkDerivation {
  pname = "tracer-transformers";
  version = "0.1.0.1";
  src = "${sources.iohk-monitoring-framework}/tracer-transformers";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base contra-tracer safe-exceptions time
  ];
  executableHaskellDepends = [ base contra-tracer text time ];
  description = "tracer transformers and examples showing their use";
  license = lib.licenses.asl20;
}
