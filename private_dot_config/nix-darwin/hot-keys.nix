{ ... }:

{
  system.defaults.CustomUserPreferences = {
    "com.apple.symbolichotkeys" = {
      AppleSymbolicHotKeys = {
        # Select next source in input menu
        "60" = {
          enabled = true;
          value = {
            parameters = [
              65535
              105
              0
            ];
            type = "standard";
          };
        };
        # Show Spotlight search (disable)
        "64" = {
          enabled = false;
        };
      };
    };
  };
}
