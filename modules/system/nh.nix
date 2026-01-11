{ variables, ... }:
{
  programs.nh = {
    enable = true;
    clean.enable = true;
    flake = "/home/${variables.username}/nixtwo";
  };
}
