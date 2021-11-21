{
  description = "Cardano packages using cabal2nix";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { self, nixpkgs }:
  let
    nixpkgsFor = system: import nixpkgs { inherit system; };

    supportedSystems = [ "x86_64-linux" "aarch64-linux" ];

    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
  in
  {
    haskellOverlayFor = system: final: prev:
      (import ./pkgs.nix { inherit (nixpkgsFor system) fetchFromGitHub; }) final;

    packagesFor = system:
      (import ./pkgs.nix { inherit (nixpkgsFor system) fetchFromGitHub; })
        pkgs.haskellPackages;
    packages = nixpkgs.lib.genAttrs supportedSystems packagesFor;
  };
}
