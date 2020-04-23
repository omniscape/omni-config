{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      layout = "us";
      dpi = 72;
      libinput = {
        enable = true;
        accelProfile = "adaptive";
        scrollMethod = "twofinger";
        tapping = true;
      };
      multitouch = {
        enable = true;
      };
      resolutions = [ { x = 1920; y = 1080; } ];
    };
  };
}
