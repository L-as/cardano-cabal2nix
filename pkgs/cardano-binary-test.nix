{ sources }:

{ mkDerivation, base, bytestring, cardano-binary, cardano-prelude
, cardano-prelude-test, cborg, containers, formatting, hedgehog
, hspec, lib, pretty-show, QuickCheck, quickcheck-instances, text
, time, vector
}:
mkDerivation {
  pname = "cardano-binary-test";
  version = "1.3.0";
  src = "${sources.cardano-base}/binary/test";
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-prelude cardano-prelude-test
    cborg containers formatting hedgehog hspec pretty-show QuickCheck
    quickcheck-instances text time vector
  ];
  description = "Test helpers from cardano-binary exposed to other packages";
  license = lib.licenses.mit;
}
