{
  inputs,
  pkgs,
  lib,
  config,
  ...
}:
{

  config = lib.mkIf config.sysconfig.niri.enable {
    environment.systemPackages = with pkgs; [
      inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    ];
  };

}
