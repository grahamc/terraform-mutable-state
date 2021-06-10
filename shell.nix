let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShell {
  buildInputs = [
    pkgs.jq
    (pkgs.terraform.withPlugins (p: [ p.local ]))
  ];
}
