{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    font = "JetBrainsMono Nerd Font";
    terminal = "${pkgs.ghostty}/bin/ghostty";
    theme = "Arc-Dark";
    extraConfig = {
      kb-row-up = "Up,Control+k";
      kb-row-down = "Down,Control+j";
      kb-accept-entry = "Return";
      kb-remove-to-eol = "Control+Shift+e";
    };
  };
}
