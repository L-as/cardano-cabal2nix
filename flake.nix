{
  description = "Cardano packages using cabal2nix";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { self, nixpkgs }:
  let
    nixpkgsFor = system: import nixpkgs { inherit system; config.allowBroken = true; };

    supportedSystems = [ "x86_64-linux" "aarch64-linux" ];

    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
  in
  {
    haskellOverlayFor = system:
      let
        pkgs = nixpkgsFor system;
        cpkgs = final: prev:
          (import ./pkgs.nix { inherit (pkgs) fetchFromGitHub; }) final;
        overlay = import ./overlay.nix { inherit (pkgs) fetchFromGitHub; lib = pkgs.haskell.lib.compose; };
      in
        nixpkgs.lib.composeExtensions pkgs overlay;

    packagesFor = system:
      let
        pkgs = nixpkgsFor system;
        hpkgs = pkgs.haskellPackages.override {
          overrides = import ./overlay.nix { inherit (pkgs) fetchFromGitHub; lib = pkgs.haskell.lib.compose; };
        };
      in
      (import ./pkgs.nix { inherit (pkgs) fetchFromGitHub; })
        hpkgs;
    packages = nixpkgs.lib.genAttrs supportedSystems self.packagesFor;
  };
}
