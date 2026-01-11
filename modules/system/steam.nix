{config, lib, ...}:
{
  config = lib.mkIf config.sysconfig.gaming.enable {
    programs.steam.enable = true;
  };
}