{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    font = "Roboto";
    terminal = "${pkgs.ghostty}/bin/ghostty";
    theme = ../../assets/raycast-dark.rasi;
    extraConfig = {
      kb-row-up = "Up,Control+k";
      kb-row-down = "Down,Control+j";
      kb-accept-entry = "Return";
      kb-remove-to-eol = "Control+Shift+e";
    };
  };
}
