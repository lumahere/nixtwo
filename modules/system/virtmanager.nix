{
  config,
  pkgs,
  lib,
  variables,
  ...
}:
{

  config = lib.mkIf config.sysconfig.virtmanager.enable {
    virtualisation.libvirtd = {
      enable = true;
      qemu.vhostUserPackages = with pkgs; [ virtiofsd ];
    };
    programs.virt-manager.enable = true;

    users.users.${variables.username}.extraGroups = [ "libvirtd" ];
    environment.systemPackages = with pkgs; [ dnsmasq ];

  };
}
