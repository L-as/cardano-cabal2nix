{
  description = "Cardano packages using cabal2nix";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { self, nixpkgs }:
  let
    nixpkgsFor = system: import nixpkgs { inherit system; };
  in
  {
    haskellOverlayFor = system: import ./overlay.nix { inherit (nixpkgsFor system) fetchFromGitHub; };
  };
}
