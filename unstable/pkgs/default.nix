{ config, lib, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    # tools
    wget curl jq

    # versiion control
    git

    # utils

    # x utils
    xclip xdotool
    # wayland utils

    # nix utils

    # build systems

    # libraries

    # languages
    julia cargo

    # terms
    kitty-wrapped alacritty-wrapped

    # browsers
    firefox w3m

    # gtk+ & icon theme
    arc-them paper-icon-theme nordic shades-of-gray-theme

    # office suite
    # visual editors

    # media
    audacity zathura

    # network
    openssh networkmanagerapplet

    # wm utils
    polybar rofi-wrapped dunst-wrapped libnotify compton-latest i3lock

    # scripts
    dotfiles-bin

    # system utils
    iotop gotop htop sysstat usbutils neofetch
  ]

}
