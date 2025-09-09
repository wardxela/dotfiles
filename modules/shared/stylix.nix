{ pkgs, ... }:

{
  stylix = {
    enable = true;
    # Good trie themes:
    # - evenok-dark
    # - kanagawa-dragon
    # - tomorrow-night
    # - ashes
    base16Scheme = "${pkgs.base16-schemes}/share/themes/github-dark.yaml";
    image = ./assets/black.png;
    fonts = with pkgs; {
      serif = {
        package = eb-garamond;
        name = "EB Garamond";
      };
      sansSerif = {
        package = inter;
        name = "Inter";
      };
      monospace = {
        package = nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };
      emoji = {
        package = nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };
    };
  };

  # TODO:
  # specialisation.light.configuration.stylix = {
  #   image = lib.mkForce ./assets/white.png;
  #   base16Scheme = lib.mkForce "${pkgs.base16-schemes}/share/themes/cupertino.yaml";
  # };
}
