# A file to enable modules;
{configModulesPath, ... }:
{
  imports = [ "${configModulesPath}/sysoptions.nix" ];

  sysconfig.niri.enable = true;
  sysconfig.gaming.enable = true;
  sysconfig.virtmanager.enable = true;
}
