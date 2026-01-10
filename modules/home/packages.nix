{ pkgs, ... }:
{
  home.packages = with pkgs; [
    vscode
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
