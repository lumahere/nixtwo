{
  pkgs,
  config,
  lib,
  ...
}:
{

  config = lib.mkIf config.sysconfig.niri.enable {

    programs.niri.enable = true;
    environment.systemPackages = [ pkgs.xwayland-satellite ];
  };

}
