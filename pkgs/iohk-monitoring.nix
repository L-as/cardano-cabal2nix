{ sources }:

{ mkDerivation, aeson, array, async, async-timer, attoparsec
, auto-update, base, base64-bytestring, bytestring, clock
, containers, contra-tracer, contravariant, directory, ekg
, filepath, katip, lib, libyaml, mtl, network, process, QuickCheck
, random, safe, safe-exceptions, scientific, semigroups, split, stm
, tasty, tasty-hunit, tasty-quickcheck, template-haskell, temporary
, text, time, time-units, tracer-transformers, transformers, unix
, unordered-containers, vector, void, Win32-network, yaml
}:
mkDerivation {
  pname = "iohk-monitoring";
  version = "0.2.0.0";
  src = "${sources.iohk-monitoring-framework}/iohk-monitoring";
  libraryHaskellDepends = [
    aeson array async async-timer attoparsec auto-update base
    base64-bytestring bytestring clock containers contra-tracer
    contravariant directory ekg filepath katip libyaml mtl network safe
    safe-exceptions scientific stm template-haskell text time
    time-units tracer-transformers transformers unix
    unordered-containers vector Win32-network yaml
  ];
  testHaskellDepends = [
    aeson array async base bytestring clock containers contra-tracer
    directory filepath libyaml mtl process QuickCheck random semigroups
    split stm tasty tasty-hunit tasty-quickcheck temporary text time
    time-units tracer-transformers transformers unordered-containers
    vector void yaml
  ];
  description = "logging, benchmarking and monitoring framework";
  license = lib.licenses.asl20;
}
