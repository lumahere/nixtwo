# A file to enable modules;
{configModulesPath, ... }:
{
  imports = [ ${configModulesPath}/sysoptions.nix ];

    sysconfig.gnome.enable = true;
}
