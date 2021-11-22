{ sources }:

{ mkDerivation, aeson, array, async, base, bytestring, clock
, containers, contra-tracer, directory, filepath, iohk-monitoring
, lib, libyaml, mtl, process, QuickCheck, random, safe-exceptions
, semigroups, split, stm, tasty, tasty-hunit, tasty-quickcheck
, temporary, text, time, time-units, transformers, unix
, unordered-containers, vector, void, yaml
}:
mkDerivation {
  pname = "lobemo-backend-monitoring";
  version = "0.1.0.0";
  src = "${sources.iohk-monitoring-framework}/plugins/backend-monitoring";
  libraryHaskellDepends = [
    aeson async base iohk-monitoring safe-exceptions stm text time unix
    unordered-containers
  ];
  testHaskellDepends = [
    aeson array async base bytestring clock containers contra-tracer
    directory filepath iohk-monitoring libyaml mtl process QuickCheck
    random semigroups split stm tasty tasty-hunit tasty-quickcheck
    temporary text time time-units transformers unordered-containers
    vector void yaml
  ];
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "provides a backend implementation for monitoring";
  license = lib.licenses.asl20;
}
