{ sources }:

{ mkDerivation, base, bytestring, cborg, io-classes, lib
, typed-protocols
}:
mkDerivation {
  pname = "typed-protocols-cborg";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/typed-protocols-cborg";
  libraryHaskellDepends = [
    base bytestring cborg io-classes typed-protocols
  ];
  description = "CBOR codecs for typed-protocols";
  license = lib.licenses.asl20;
}
