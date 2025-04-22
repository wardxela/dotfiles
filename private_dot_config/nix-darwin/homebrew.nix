{ ... }:

{
  homebrew = {
    enable = true;
    brews = [
      "git"
      "encore"
      "mingw-w64"
    ];
    casks = [
      "hammerspoon"
    ];
  };
}
