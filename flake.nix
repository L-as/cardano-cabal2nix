{
  description = "Cardano packages using cabal2nix";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { self, nixpkgs }:
  let
    nixpkgsFor = system: import nixpkgs { inherit system; config.allowBroken = true; };

    supportedSystems = [ "x86_64-linux" "aarch64-linux" ];

    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

    packageList = builtins.attrNames (import ./pkgs.nix null null);
  in
  {
    haskellOverlayFor = system:
      let
        pkgs = nixpkgsFor system;
        overlay = import ./overlay.nix {
          inherit (pkgs) fetchFromGitHub libsodium;
          hlib = pkgs.haskell.lib.compose;
          inherit (nixpkgs) lib;
        };
      in
      overlay;

    packagesFor = system:
      let
        pkgs = nixpkgsFor system;
        hpkgs = pkgs.haskellPackages.override {
          overrides = self.haskellOverlayFor system;
        };
      in
      hpkgs; # TODO: limit to new packages
    packages = nixpkgs.lib.genAttrs supportedSystems self.packagesFor;
  };
}
