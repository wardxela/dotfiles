{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    terminal = "${pkgs.ghostty}/bin/ghostty";
    theme = ../../assets/raycast-dark.rasi;
    plugins = with pkgs; [
      rofi-emoji
      rofi-calc
    ];
    modes = [
      "window"
      "run"
      "drun"
      "ssh"
      "keys"
      "combi"
      "calc"
      "emoji"
    ];
    extraConfig = {
      kb-row-up = "Up,Control+k";
      kb-row-down = "Down,Control+j";
      kb-accept-entry = "Return";
      kb-remove-to-eol = "Control+Shift+e";
    };
  };
}
