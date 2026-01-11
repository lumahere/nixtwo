# A file to enable modules;
{ ... }:
{
  imports = [ ./modules/sysoptions.nix ];

  sysconfig.niri.enable = true;
  sysconfig.gaming.enable = true;
  sysconfig.virtmanager.enable = true;
}
