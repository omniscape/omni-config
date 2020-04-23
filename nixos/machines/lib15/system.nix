
{ config, pkgs, ... }:

{

# --- TODO: mount SSD Luks filesystem
# --- TODO: virtualisation
# --- TODO: containerisation
# containers = {}; # TODO: could this be used for each hApp :?
# --- TODO: external network security && monitoring

  system = {
    autoUpgrade.enable = true;
  };

  powerManagement = {
    enable = true;
    powertop.enable = true; # https://github.com/fenrus75/powertop
  };

  nixpkgs = {
    config.allowUnfree = true;
  };

  nix = {
    useSandbox = true;
    trustedUsers = [ "root" "kaos" ];

    autoOptimiseStore = true;
    gc = {
      automatic = true;
    };
  };

  environment.systemPackages = with pkgs; [

  # performance
    atop

  # network
    wget
    curl
    git
    mullvad-vpn
    nload

  # hardware
    lshw

  # data
    zip
    unzip
  ];

  programs = {
    autojump.enable = true; # https://github.com/wting/autojump
    command-not-found.enable = true;
    iftop.enable = true;
#      kbdlight.enable = true;
    thefuck = {
      enable = true;
      alias = "fu";
    };
  #  mtr.enable = true;
    iotop.enable = true;
#    wireshark.enable = true;
  };

  # Enable sound.
  sound = {
    enable = true;
    mediaKeys.enable = true;
  };

  environment.extraInit = ''
    # these are the defaults, but some applications are buggy so we set them
    # here anyway
    export XDG_CONFIG_HOME=$HOME/.config
    export XDG_DATA_HOME=$HOME/.local/share
    export XDG_CACHE_HOME=$HOME/.cache
  '';

}
