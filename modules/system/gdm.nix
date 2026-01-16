{ config, lib, pkgs, ... }:
let
  cfg = config.sysconfig;
in
{
  config = lib.mkIf cfg.gnome.enable  {
    services.displayManager.gdm.enable = true;
  };
}