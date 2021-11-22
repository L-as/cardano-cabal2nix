{ sources }:

{ mkDerivation, base, basement, bytestring, cryptonite, deepseq
, foundation, gauge, hashable, integer-gmp, lib, memory
}:
mkDerivation {
  pname = "cardano-crypto";
  version = "1.1.0";
  src = "${sources.cardano-crypto}/";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base basement bytestring cryptonite deepseq foundation hashable
    integer-gmp memory
  ];
  testHaskellDepends = [
    base basement bytestring cryptonite foundation memory
  ];
  benchmarkHaskellDepends = [
    base bytestring cryptonite gauge memory
  ];
  homepage = "https://github.com/input-output-hk/cardano-crypto#readme";
  description = "Cryptography primitives for cardano";
  license = lib.licenses.mit;
}
