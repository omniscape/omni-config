{ pkgs, ... }:

let
  newGitRepo = pkgs.writeScriptBin "newGitRepo" ''
    #!${pkgs.stdenv.shell}
    echo "README" >> README.md
    git init
    git add README.md
    git commit -m "first commit"
    git remote add origin https://github.com/$@.git
    git push -u origin master
  '';

in {
  environment.systemPackages = [ newGitRepo ];
}
