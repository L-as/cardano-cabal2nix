{ sources }:

{ mkDerivation, base, bytestring, HsOpenSSL, hspec, http-client
, http-types, lib, network
}:
mkDerivation {
  pname = "http-client-openssl";
  version = "0.3.0.0";
  src = "${sources.http-client}/http-client-openssl";
  libraryHaskellDepends = [
    base bytestring HsOpenSSL http-client network
  ];
  testHaskellDepends = [
    base HsOpenSSL hspec http-client http-types
  ];
  doCheck = false;
  homepage = "https://github.com/snoyberg/http-client";
  description = "http-client backend using the OpenSSL library";
  license = lib.licenses.mit;
}
