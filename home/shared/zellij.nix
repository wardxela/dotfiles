{ ... }:

{
  programs.zellij = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      default_mode = "locked";
      show_startup_tips = false;
      show_release_notes = false;
      ui = {
        pane_frames = {
          hide_session_name = true;
        };
      };
    };
  };
}
