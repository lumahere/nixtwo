# A file to enable modules;
{ ... }:
{
  imports = [ ./modules/sysoptions.nix ];

    sysconfig.gnome.enable = true;
}
