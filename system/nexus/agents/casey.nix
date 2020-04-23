{ config, pkgs, ... }:

{

  users.users.casey = {
    isNormalUser = true;
    description = "Casey W";

    group = "kcw";
    extraGroups = [
      "wheel"
      "disk"
      "networkmanager"
      "audio"
      "video"
    ];

    createHome = true;
    home = "/kcw/casey";
  };

}
