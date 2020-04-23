{ config, pkgs, ... }:

{

 imports =
   [ # TODO: interface-specific imports
     # Display Server: X11 or Wayland
     ./interface/server/x11.nix

     # Display Manager
     ./interface/display/dm/sddm.nix

     # Desktop Manager
     ./interface/display/de/none.nix

     # Window Manager
     ./interface/display/wm/i3.nix

     # Display Config
     ./interface/config/dotfiles.nix
   ];

}
