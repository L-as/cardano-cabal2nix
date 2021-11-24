{ lib }:

{ mkDerivation, base, transformers }:
mkDerivation {
  pname = "unliftio-core";
  version = "0.1.2.0";
  sha256 = "0y3siyx3drkw7igs380a87h8qfbbgcyxxlcnshp698hcc4yqphr4";
  revision = "3";
  editedCabalFile = "08ybg150pa1h1d5z6qqicfv8yfjpc3mrjp70xdn4la72zhpnb9xh";
  libraryHaskellDepends = [ base transformers ];
  description = "The MonadUnliftIO typeclass for unlifting monads to IO";
  license = lib.licenses.mit;
  hydraPlatforms = lib.platforms.none;
}
