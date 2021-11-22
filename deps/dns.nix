{ lib }:

{ mkDerivation, async, attoparsec, auto-update, base
, base64-bytestring, binary, bytestring, containers, cryptonite
, doctest, hspec, iproute, mtl, network, psqueues, QuickCheck, safe
, time, word8
}:
mkDerivation {
  pname = "dns";
  version = "3.0.4";
  sha256 = "1aa4zb9zkk244rndimrq8maxj9qrmz3rb13v9n8jblmp6ssk6d3v";
  revision = "1";
  editedCabalFile = "15jafrm919w4p23m7kpmyc1yvzpy88jcccycc00dza69d119zjdr";
  libraryHaskellDepends = [
    async attoparsec auto-update base base64-bytestring binary
    bytestring containers cryptonite iproute mtl network psqueues safe
    time
  ];
  testHaskellDepends = [
    base bytestring doctest hspec iproute network QuickCheck word8
  ];
  testTarget = "spec";
  description = "DNS library in Haskell";
  license = lib.licenses.bsd3;
  hydraPlatforms = lib.platforms.none;
}
