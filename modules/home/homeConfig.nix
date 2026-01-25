{
  pkgs,
  variablesgt,
  inputs,
  ...
}:
{
  imports = [ ]; # for home-manager settings
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.extraSpecialArgs = { inherit inputs; };
  home-manager.backupFileExtension = "backup";

  home-manager.users.${variables.username} = {

    imports = [
      ./packages.nix
    ]; # for home config
    home.username = variables.username;
    home.homeDirectory = "/home/${variables.username}";
    home.stateVersion = "25.11";

    programs.home-manager.enable = true;

  };

}
