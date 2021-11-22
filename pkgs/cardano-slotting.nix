{ sources }:

{ mkDerivation, aeson, base, cardano-binary, cborg, deepseq, lib
, mmorph, nothunks, quiet, serialise, time
}:
mkDerivation {
  pname = "cardano-slotting";
  version = "0.1.0.0";
  src = "${sources.cardano-base}/slotting";
  libraryHaskellDepends = [
    aeson base cardano-binary cborg deepseq mmorph nothunks quiet
    serialise time
  ];
  description = "Key slotting types for cardano libraries";
  license = lib.licenses.asl20;
}
