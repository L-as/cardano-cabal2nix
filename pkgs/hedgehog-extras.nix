{ sources }:

{ mkDerivation, aeson, aeson-pretty, async, base, bytestring
, deepseq, directory, exceptions, filepath, hedgehog, lib, mmorph
, mtl, network, process, resourcet, stm, temporary, text, time
, transformers, unliftio, unordered-containers, yaml
}:
mkDerivation {
  pname = "hedgehog-extras";
  version = "0.1.0.0";
  src = "${sources.hedgehog-extras}";
  libraryHaskellDepends = [
    aeson aeson-pretty async base bytestring deepseq directory
    exceptions filepath hedgehog mmorph mtl network process resourcet
    stm temporary text time transformers unliftio unordered-containers
    yaml
  ];
  description = "Supplemental library for hedgehog";
  license = lib.licenses.asl20;
}
