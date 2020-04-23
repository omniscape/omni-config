{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;

      layout = "us";

      libinput = {
        enable = true;
        accelProfile = "adaptive";
        scrollMethod = "twofinger";
        tapping = true;
      };

      multitouch = {
        enable = true;
      };

      resolutions = [ { x = 3840; y = 2160; } ]; #{ x = 2560; y = 1440; }
      dpi = 144;

      desktopManager = {
        default = "none";
        xterm.enable = false;
      };

    };
  };
}
