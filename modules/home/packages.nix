{ pkgs, ... }:
{
  home.packages = with pkgs; [
    vscodium
    firefox
    alacritty
    fuzzel
    git
    kdePackages.dolphin
  ];
  programs = {
    firefox.enable = true;
  };

}
