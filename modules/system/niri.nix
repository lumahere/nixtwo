{
  pkgs,
  config,
  lib,
  ...
}:
{

  config = lib.mkIf config.sysconfig.niri.enable {

    programs.niri.enable = true;
    programs.niri.package = pkgs.niri;
  };

}
