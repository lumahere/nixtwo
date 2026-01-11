{config, osConfig, lib, pkgs, ...}:
{
  config = lib.mkIf osConfig.sysconfig.gaming.enable {
    program.lutris.enable = true;
  }
}