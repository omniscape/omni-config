{ config, pkgs, ... }:

{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users = {

  # KaOS

    kaos = {
      isNormalUser = true;
      description = "KaOS";

      group = "users";
      extraGroups = [
        "wheel"
        "disk"
        "networkmanager"
        "audio"
        "video"
      ];

      createHome = true;
      home = "/home/kaos";

      packages = with pkgs; [

      # web
      #  firefox

      # dev
      #  atom

      # comms
      #  keybase
      ];
    };


  };

}
