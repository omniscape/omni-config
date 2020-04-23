{ pkgs, ... }:

let
  reloadUI = pkgs.writeScriptBin "reloadUI" ''
    #!${pkgs.stdenv.shell}

    # Terminate already running bar instances
    polybar-msg cmd quit
    # Wait until the processes have been shut down
    while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
    # Launch bar1 and bar2
    polybar -c $HOME/.config/polybar/config.ini navbar &

    xrdb $HOME/.cache/wal/colors.Xresources

    wal -R

    i3-msg restart

    exit 0

  '';

in {
  environment.systemPackages = [ reloadUI ];
}
