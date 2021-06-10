let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShell {
  buildInputs = [
    (pkgs.terraform.withPlugins (p: [ p.local ])
      ];
    }
