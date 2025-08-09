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
    terminal = "screen-256color";
  };
}
