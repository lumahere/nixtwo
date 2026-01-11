{
  config,
  osConfig,
  lib,
  pkgs,
  ...
}:
{
  config = lib.mkIf osConfig.sysconfig.gaming.enable {
    programs.lutris.enable = true;
  };
}
