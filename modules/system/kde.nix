{config, lib, pkgs, ...}:
{
  config = lib.mkIf config.sysconfig.kde.enable {
    services.desktopManager.plasma6.enable = true;
    environment.systemPackages = with pkgs; [ nautilus gnome-terminal ];
  };
}