{ sources }:

{ mkDerivation, aeson, base, beam-core, beam-migrate, beam-sqlite
, containers, contra-tracer, data-default, freer-simple, hedgehog
, iohk-monitoring, lens, lib, mtl, openapi3, prettyprinter
, semigroups, sqlite-simple, streaming, tasty, tasty-hedgehog, text
}:
mkDerivation {
  pname = "freer-extras";
  version = "0.1.0.0";
  src = "${sources.plutus-apps}/freer-extras";
  libraryHaskellDepends = [
    aeson base beam-core beam-sqlite containers data-default
    freer-simple iohk-monitoring lens mtl openapi3 prettyprinter
    sqlite-simple streaming text
  ];
  testHaskellDepends = [
    base beam-core beam-migrate beam-sqlite containers contra-tracer
    freer-simple hedgehog lens semigroups sqlite-simple tasty
    tasty-hedgehog
  ];
  description = "Useful extensions to simple-freer";
  license = lib.licenses.asl20;
}
