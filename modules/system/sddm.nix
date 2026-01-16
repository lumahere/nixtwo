{
  pkgs,
  config,
  lib,
  ...
}:
{

  config = lib.mkIf (config.sysconfig.niri.enable && !config.sysconfig.gnome.enable) {
    services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      theme = "sddm-astronaut-theme";
    };
    environment.systemPackages = [ pkgs.sddm-astronaut ];
    services.displayManager.sddm.extraPackages = with pkgs.kdePackages; [
      qtsvg
      qtmultimedia
      qtvirtualkeyboard
    ];
  };
}
