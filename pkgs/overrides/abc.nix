{ stdenv, fetchFromGithub, abc, ... }:

abc.overrideDerivation (old: rec {
  version = "0.0.1";
  name = "abc-${version}";
  src = fetchFromGithub {
    owner = "abc";
    repo = "abc";
    rev= "abc";
    sha256 = "abc";
  };
})
