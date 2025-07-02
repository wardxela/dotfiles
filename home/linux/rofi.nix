{ pkgs, ... }:

{
  stylix.targets.rofi.enable = false;
  programs.rofi = {
    enable = true;
    terminal = "${pkgs.ghostty}/bin/ghostty";
    theme = ../../assets/raycast-dark.rasi;
    plugins = with pkgs; [
      rofi-emoji
      rofi-calc
    ];
    modes = [
      "combi"
      "calc"
      "emoji"
    ];
    extraConfig = {
      kb-row-up = "Up,Control+k";
      kb-row-down = "Down,Control+j";
      kb-mode-next = "Control+l";
      kb-mode-previous = "Control+h";
      kb-accept-entry = "Return";
      kb-remove-to-eol = "Control+Shift+e";
      kb-remove-char-back = "BackSpace,Shift+BackSpace";
      kb-mode-complete = "Control+i";
      combi-modes = "drun,window,ssh";
      combi-display-format = "{text}&#09;<span font='Normal 14px' alpha='50%'>{mode}</span>";
      drun-display-format = "{name}    <span weight='normal' alpha='60%'>{generic}</span>";
      window-format = "{t}";
      display-drun = "Application";
      display-ssh = "        SSH";
      display-window = "     Window";
    };
  };
}
