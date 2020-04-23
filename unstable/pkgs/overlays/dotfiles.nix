self: super:

let
  makeWrapped = { name, cmd ? name, pkg ? super.lib.getAttr name super, arg, extraWrapArgs ? "" }:
    super.stdenv.mkDerivation {
      name = name + "-wrapped-" + (pkg.version or "");
      buildInputs = [ super.makeWrapper ];
      buildCommand = ''
        mkdir -p $out/bin
        for BINARY in $(ls ${pkg}/bin); do
          ln -s ${pkg}/bin/$BINARY $out/bin/$BINARY
        done
        wrapProgram $out/bin/${cmd} --add-flags "${arg}" ${extraWrapArgs}
      '';
    };
in

{
  dotfiles-bin = super.callPackage ../custom/dotfiles-bin.nix { };

  rofi-wrapped = makeWrapped {
    name = "rofi";
    pkg = super.rofi;
    arg = "-config \\$(dotfiles/rofi-config)";
  };

  kitty-wrapped = makeWrapped {
    name = "kitty";
    arg = "--config=\\$(dotfiles)/kitty-config";
  };
}
