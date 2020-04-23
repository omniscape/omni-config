{ config, pkgs, ... }:

{

  hardware = {

#    acpilight.enable = true;
    cpu.intel.updateMicrocode = false;

    opengl = {
      enable = true;
      driSupport = true;
    };

    pulseaudio = {
      enable = true;
      package = pkgs.pulseaudio;
    };

#    bluetooth = {
#      enable = false;
#      package = pkgs.bluezFull;
#      powerOnBoot = false;
#    };

#    brightnessctl.enable = true;
#    ledger.enable = true;
  };

}
