{ sources }:

{ mkDerivation, aeson, asn1-encoding, asn1-types, base
, base64-bytestring, bytestring, cardano-prelude, cryptonite
, data-default-class, directory, exceptions, filepath, hedgehog
, hourglass, ip, lib, QuickCheck, text, unordered-containers
, wide-word, x509, x509-store, x509-validation, yaml
}:
mkDerivation {
  pname = "cardano-sl-x509";
  version = "3.0.0";
  src = "${sources.cardano-sl-x509}";
  libraryHaskellDepends = [
    aeson asn1-encoding asn1-types base base64-bytestring bytestring
    cardano-prelude cryptonite data-default-class directory exceptions
    filepath hourglass ip text unordered-containers wide-word x509
    x509-store x509-validation yaml
  ];
  testHaskellDepends = [
    base cardano-prelude exceptions hedgehog QuickCheck
  ];
  homepage = "https://github.com/input-output-hk/cardano-sl/x509/README.md";
  description = "Tool-suite for generating x509 certificates specialized for RSA with SHA-256";
  license = lib.licenses.mit;
}
