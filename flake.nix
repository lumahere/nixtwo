{
  description = "hopefully my last nix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      stylix,
      niri,
      noctalia,
    }@inputs:
    let
      variables = import ./variable.nix;
      mkHost =
        hostName: system:
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs;
            inherit variables;
          };
          modules = [
            ./hosts/common.nix
            ./hosts/${hostName}
            ./modules/system
            stylix.nixosModules.stylix
            niri.nixosModules.niri
            home-manager.nixosModules.home-manager
            ./modules/home
            ./masterConfig.nix
          ];
        };

    in
    {
      nixosConfigurations = {
        ${variables.hostname} = mkHost "mainPC" "x86_64-linux";
        "lapbrw" = mkHost "lapbrw" "x86_64-linux";
      };

    };
}
