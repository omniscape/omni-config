{ pkgs, stdenv, shellCheck }:

stdenv.mkDerivation {
  name = "dotfiles-bin";
  src = ../kaleidos/dotfiles;

  installPhase = ''
    mkdir -p $out/kaos/dots
    cp -r ./* $out/kaos/dots
    cp -r ./* $out/share
    mv $out/kaos/dots/bin $out/bin
    cat <<EOF>> $out/bin/dots
    #!${pkgs.stdenv.shell}

    echo $out/kaos/dots
    EOF
    chmod +x $out/bin/dots
  '';

  doCheck = true;
  checkInputs = [ shellCheck ];
  checkPhase = ''
    shellCheck ./bin/*
  '';
}
