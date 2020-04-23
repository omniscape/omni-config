{ pkgs, ... }:

let
  helloWorld = pkgs.writeScriptBin "helloWorld" ''
    #!${pkgs.stdenv.shell}
    echo Hello World
  '';

in {
  environment.systemPackages = [ helloWorld ];
}
