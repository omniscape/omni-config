self:super

{
  pkgsUnstable = (import <nixos-unstable> { config = super.config; });

  # Package Overrides
  # abc = import ../overrides/abc.nix super;
}
