{ sources }:

{ mkDerivation, base, bimap, binary, bytestring, containers, extra
, hedgehog, lib, microlens, microlens-mtl, microlens-th, mmorph
, monad-control, moo, random, template-haskell, temporary
, th-utilities, transformers, tree-diff, typerep-map
}:
mkDerivation {
  pname = "goblins";
  version = "0.2.0.0";
  src = "${sources.goblins}/";
  libraryHaskellDepends = [
    base bimap binary bytestring containers extra hedgehog microlens
    microlens-mtl microlens-th mmorph monad-control moo random
    template-haskell th-utilities transformers tree-diff typerep-map
  ];
  testHaskellDepends = [ base hedgehog temporary ];
  homepage = "https://github.com/input-output-hk/goblins";
  description = "Genetic algorithm based randomised testing";
  license = lib.licenses.bsd3;
}
