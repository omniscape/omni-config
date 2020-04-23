{ config, pkgs, ... }:

{

  imports =
    [ # TODO: interface-specific imports

      # Display Server: X11 or Wayland
      ./xserver.nix

      # Display Manager
      ./lightdm.nix

      # Window Manager
      ./i3.nix

      # Display Config
      ./interface/config/dotfiles.nix
    ];

  environment.etc = {
    # TODO: "XDG/?"
  };

  environment.extraInit = ''
    # these are the defaults, but some applications are buggy so we set them
    # here anyway
    export XDG_CONFIG_HOME=$HOME/.config
    export XDG_DATA_HOME=$HOME/.local/share
    export XDG_CACHE_HOME=$HOME/.cache
  '';

  fonts.fonts = with pkgs; [
    dejavu_fonts
    #nerdfonts
    fira-code
    #hack
    #norwester
  ];
}
