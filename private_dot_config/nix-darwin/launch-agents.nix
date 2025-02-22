{ ... }:

{
  launchd.user.agents = {
    keyremap = {
      serviceConfig = {
        Label = "com.user.keyremap";
        ProgramArguments = [
          "/usr/bin/hidutil"
          "property"
          "--set"
          ''{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x700000068}]}''
        ];
        RunAtLoad = true;
        KeepAlive = false;
      };
    };
  };
}
