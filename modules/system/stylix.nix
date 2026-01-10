{ pkgs, config, ... }:
{
  stylix.enable = true;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/nord.yaml";
  stylix.image = pkgs.fetchurl {
    url = "https://preview.redd.it/1r1kk9qi00961.png?auto=webp&s=83cf540b3dc700af50780debc8a74aa12940949b";
    hash = "sha256-MDxfkbdxdsxY7xy6Ntz0Vj1VZg8Y7NjMLzicrBj3bvY=";

  };
  stylix.fonts = {
    serif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Serif";
    };

    sansSerif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans";
    };

    monospace = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans Mono";
    };

    emoji = {
      package = pkgs.noto-fonts-color-emoji;
      name = "Noto Color Emoji";
    };
  };
  stylix.cursor = {
    package = pkgs.volantes-cursors;
    name = "volantes_cursors";
    size = 24;
  };

  stylix.polarity = "dark";
}
