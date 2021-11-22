{ sources }:

{ mkDerivation, aeson, base, bytestring, cardano-prelude
, cardano-prelude-test, cborg, containers, data-fix, formatting
, hedgehog, hspec, lib, nothunks, pretty-show, primitive
, QuickCheck, quickcheck-instances, recursion-schemes
, safe-exceptions, tagged, text, time, vector
}:
mkDerivation {
  pname = "cardano-binary";
  version = "1.5.0";
  src = "${sources.cardano-base}/binary";
  libraryHaskellDepends = [
    aeson base bytestring cardano-prelude cborg containers data-fix
    formatting nothunks primitive recursion-schemes safe-exceptions
    tagged text time vector
  ];
  testHaskellDepends = [
    base bytestring cardano-prelude cardano-prelude-test cborg
    containers formatting hedgehog hspec pretty-show QuickCheck
    quickcheck-instances tagged text time vector
  ];
  description = "Binary serialization for Cardano";
  license = lib.licenses.asl20;
}
