{ config, pkgs, lib, ... }:

{

  environment.variables = {
    EDITOR = "atom";
    TERMINAL = "alacritty";
  };

  # TODO: bash / fish / zsh -> TFS
  # TODO: nix-shell envs -> dev / ops

}
