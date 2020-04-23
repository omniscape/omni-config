{ config, pkgs, ... }:

{

  imports = [
    ./nexus/agents
    #./nexus/comms
    ./scripts
    ./shells
  ];

    system = {
      autoUpgrade.enable = true;
    };

    nixpkgs = {
      config.allowUnfree = true;
      overlays = import ../pkgs/overlays;
    };

  nix = {
    trustedUsers = [ "root" "@kcw" "@wheel" ];
    #daemonIONiceLevel = 7;
    #daemonNiceLevel = 19;
    useSandbox = true;
    autoOptimiseStore = true;
    gc = {
      automatic = true;
    };
    #extraOptions = ''
    #  fallback = true;
    #'';
  };

  i18n = {
    consoleKeyMap = "us";
    defaultLocale = "en_GB.UTF-8";
  };

  time.timeZone = "Europe/London";

  system.stateVersion = "20.03";
}
