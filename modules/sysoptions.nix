# A file containing toggles for modules / functionaltiy

{
  config,
  lib,
  variables,
  ...
}:
let
  cfg = config.sysconfig;
in
{
  imports = [
    ./system/niri.nix
    ./system/sddm.nix
    ./system/noctalia.nix
    ./system/gnome.nix
    ./system/steam.nix
    ./system/virtmanager.nix
  ];

  options.sysconfig = {
    niri.enable = lib.mkEnableOption "enables niri config";
    gnome.enable = lib.mkEnableOption "enables gnome";

    gaming.enable = lib.mkEnableOption "enables lutris & steam";
    virtmanager.enable = lib.mkEnableOption "enables virtmanager";
  };
  config = {
    home-manager.users.${variables.username} = {
      imports = [
        ./home/niriconf.nix
        ./home/lutris.nix
      ];
    };
  };
}
