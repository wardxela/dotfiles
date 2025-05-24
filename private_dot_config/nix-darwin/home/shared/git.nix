{ ... }:

{
  programs.git = {
    enable = true;
    userName = "wardxela";
    userEmail = "wardxela@gmail.com";
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      push = {
        autoSetupRemote = true;
        default = "current";
      };
    };
  };
}
