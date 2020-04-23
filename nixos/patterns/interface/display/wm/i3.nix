{ config, pkgs, ... }:

{
  services = {

    xserver.windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
      extraSessionCommands = "wal -R";
      extraPackages = with pkgs;
      [
        i3lock-color # lock screen
        compton # compositor
        rofi # launcher
        polybarFull # status bar
        neofetch # system info

        zsh # shell
        fish # shell

        alacritty # terminal
        kitty # terminal
        starship # shell prompt
        st # terminal

        atom
        firefox
        ranger # terminal file manager

        pywal # color-scheme generator
        dunst # notif daemon
        networkmanagerapplet
        connman
        connman-ncurses
        redshift # color adjustments
        conky
        xdotool


        gotop # process visualiser
        xsettingsd # xsettings daemon
        lxappearance # GTK preferences

        exa # list # TODO: alias to ls
        jq
        stow
        xorg.xev
        xorg.xmodmap
        xorg.xrdb

        zathura
        keybase
        #nixpkgs.matrixcli
        signal-cli

        syncthing

        # Fonts
        hack-font
        norwester-font
        font-awesome
      ];
    };
    compton = {
      enable = true;
      fade = true;
    };
  };

}
