{ pkgs, ... }:

let
  switchColors = pkgs.writeScriptBin "switchColors" ''
    #!${pkgs.stdenv.shell}
    echo $@    
    wal -i ~/vision/wp/$@
  '';

in {
  environment.systemPackages = [ switchColors ];
}
