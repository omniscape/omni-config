{ config, pkgs, ... }:

{

  users.users.kyle = {
    isNormalUser = true;
    description = "Kyle W";

    group = "kcw";
    extraGroups = [
      "wheel"
      "disk"
      "networkmanager"
      "audio"
      "video"
    ];

    createHome = true;
    home = "/kcw/kyle";
  };

}
