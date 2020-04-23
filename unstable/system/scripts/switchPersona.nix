{ pkgs, ... }:

let
  switchToCasey = pkgs.writeScriptBin "switchToCasey" ''
    #!${pkgs.stdenv.shell}
    su - casey
    read -s -p "Enter Password: " mypassword
  '';

in {
  environment.systemPackages = [ switchToCasey ];
}
