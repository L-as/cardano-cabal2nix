{ sources }:

{ mkDerivation, aeson, base, bytestring, hsyslog, iohk-monitoring
, katip, lib, libsystemd-journal, template-haskell, text, unix
, unordered-containers
}:
mkDerivation {
  pname = "lobemo-scribe-systemd";
  version = "0.1.0.0";
  src = "${sources.iohk-monitoring-framework}/plugins/scribe-systemd";
  libraryHaskellDepends = [
    aeson base bytestring hsyslog iohk-monitoring katip
    libsystemd-journal template-haskell text unix unordered-containers
  ];
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "provides a backend for logging to systemd/journal";
  license = lib.licenses.asl20;
}
