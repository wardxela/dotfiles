{ ... }:

{
  programs.delta = {
    enable = true;
    enableGitIntegration = true;
    options = {
      hyperlinks = true;
      line-numbers = true;
      navigate = true;
      side-by-side = true;
    };
  };
}
