{config, lib, pkgs,variables,  ...}:
{
  config = lib.mkIf config.sysconfig.gaming.enable {
    programs.steam.enable = true;

    environment.systemPackages = [pkgs.protonup-ng pkgs.xwayland-satellite];
    environment.sessionVariables = {
      STEAM_EXTRA_COMPAT_TOOLS_PATHS = 
        "/home/${variables.username}/.steam/.root/compatibilitytools.d";
    };
    programs.xwayland.enable = true;
  };
  
}