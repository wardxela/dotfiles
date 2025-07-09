{ ... }:

{
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    escapeTime = 0;
    focusEvents = true;
    historyLimit = 5000;
    keyMode = "vi";
    mouse = true;
    shortcut = "Space";
    terminal = "screen-256color";
  };
}
