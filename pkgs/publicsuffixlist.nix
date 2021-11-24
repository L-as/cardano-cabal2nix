{ sources }:

{ mkDerivation, base, blaze-builder, bytestring, containers
, data-default, HUnit, idna, lib, text
}:
mkDerivation {
  pname = "publicsuffixlist";
  version = "0.1";
  src = "${sources.http-client}/http-client/publicsuffixlist";
  libraryHaskellDepends = [
    base blaze-builder bytestring containers text
  ];
  testHaskellDepends = [
    base blaze-builder bytestring containers data-default HUnit idna
    text
  ];
  homepage = "https://github.com/litherum/publicsuffixlist";
  description = "Effective TLD checking";
  license = lib.licenses.bsd3;
}
