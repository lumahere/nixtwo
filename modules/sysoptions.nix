# A file containing toggles for modules / functionaltiy

{ config, lib, ... }:
let
  cfg = config.sysconfig;
in
{
  imports = [
    ./system/niri.nix
    ./home/niriconf.nix
    ./system/sddm.nix
    ./system/noctalia.nix
    ./system/gnome.nix
  ];

  options.sysconfig = {
    niri.enable = lib.mkEnableOption "enables niri config";
    gnome.enable = lib.mkEnableOption "enables gnome";
  };
}
