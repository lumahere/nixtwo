# modules that are default on every system
{ ... }:
{
  imports = [
    ./stylix.nix
    ./flatpak.nix
    ./nh.nix
  ];
}
