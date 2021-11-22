{ sources }:

{ mkDerivation, aeson, base, data-default-class, exceptions
, filepath, lib, monad-logger, mtl, newtype-generics
, optparse-applicative, playground-common, prometheus
, servant-client, servant-server, tasty, temporary, text
, time-units, wai, wai-cors, wai-extra, warp
}:
mkDerivation {
  pname = "web-ghc";
  version = "0.1.0.0";
  src = "${sources.plutus-apps}/web-ghc";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base exceptions filepath mtl newtype-generics
    playground-common servant-client servant-server temporary text
    time-units
  ];
  executableHaskellDepends = [
    base data-default-class monad-logger optparse-applicative
    playground-common prometheus servant-server text time-units wai
    wai-cors wai-extra warp
  ];
  testHaskellDepends = [ base tasty ];
  homepage = "https://github.com/iohk/plutus#readme";
  license = lib.licenses.asl20;
}
