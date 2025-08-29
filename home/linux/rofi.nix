{
  lib,
  pkgs,
  config,
  ...
}:

let
  rofi-screenshot = pkgs.callPackage ./rofi-screenshot.nix { };
  rofi-system = pkgs.callPackage ./rofi-system.nix { };
in
{
  stylix.targets.rofi.enable = false;
  programs.rofi = {
    enable = true;
    terminal = lib.getExe pkgs.kitty;
    theme = ../../assets/raycast-dark.rasi;
    plugins = with pkgs; [
      rofi-emoji
      rofi-calc
      rofi-power-menu
      rofi-screenshot
      rofi-system
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
      modes = "combi,calc,emoji";
      matching = "fuzzy";
      combi-modes = "drun,window,ssh,power-menu:${lib.getExe pkgs.rofi-power-menu} --choices=shutdown/reboot --confirm='',screenshot:${lib.getExe rofi-screenshot},system:${lib.getExe rofi-system}";
      combi-display-format = "{text}&#09;<span font='Normal 14px' alpha='50%'>{mode}</span>";
      drun-display-format = "{name}    <span weight='normal' alpha='60%'>{generic}</span>";
      window-format = "{t}";
      display-drun = "Application";
      display-ssh = "        SSH";
      display-window = "     Window";
      # TODO: https://github.com/nix-community/home-manager/issues/4783
      "// calc" = config.lib.formats.rasi.mkLiteral ''

        calc {
          terse: true;
          hint-result: "";
          hint-welcome: "";
        }
        // '';
    };
  };
}
