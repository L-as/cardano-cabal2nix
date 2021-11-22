{ sources }:

{ mkDerivation, base, bytestring, ghc-boot, lib, template-haskell
}:
mkDerivation {
  pname = "plutus-ghc-stub";
  version = "8.6.5";
  src = "${sources.plutus}/stubs/plutus-ghc-stub";
  libraryHaskellDepends = [
    base bytestring ghc-boot template-haskell
  ];
  homepage = "http://www.haskell.org/ghc/";
  description = "The GHC API";
  license = lib.licenses.bsd3;
}
