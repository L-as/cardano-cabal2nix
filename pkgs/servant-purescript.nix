{ sources }:

{ mkDerivation, aeson, base, bytestring, containers, directory
, filepath, hspec, hspec-expectations-pretty-diff, http-types
, HUnit, lens, lib, mainland-pretty, process, purescript-bridge
, servant, servant-foreign, servant-server, text, wl-pprint-text
}:
mkDerivation {
  pname = "servant-purescript";
  version = "0.9.0.2";
  src = "${sources.servant-purescript}";
  libraryHaskellDepends = [
    aeson base bytestring containers directory filepath http-types lens
    mainland-pretty purescript-bridge servant servant-foreign
    servant-server text wl-pprint-text
  ];
  testHaskellDepends = [
    aeson base containers directory hspec
    hspec-expectations-pretty-diff HUnit lens mainland-pretty process
    purescript-bridge servant servant-foreign text wl-pprint-text
  ];
  homepage = "https://github.com/input-output-hk/servant-purescript";
  description = "Generate a PureScript API client for you servant API";
  license = lib.licenses.bsd3;
}
