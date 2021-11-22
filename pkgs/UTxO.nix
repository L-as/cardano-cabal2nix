{ sources }:

{ mkDerivation, base, bytestring, containers, cryptohash
, cryptonite, hashable, lib, memory, template-haskell
}:
mkDerivation {
  pname = "UTxO";
  version = "2.0";
  src = "${sources.plutus}/notes/model/UTxO.hsproj";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base bytestring containers cryptohash cryptonite hashable memory
    template-haskell
  ];
  description = "UTxO model with Template Haskell witnesses";
  license = lib.licenses.mit;
}
