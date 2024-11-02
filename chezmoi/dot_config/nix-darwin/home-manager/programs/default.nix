{ config, pkgs, ... }:

{
  imports = [
    ./zoxide.nix
    ./starship.nix
    ./atuin.nix
    ./bat.nix
    ./fish.nix
    ./direnv.nix
    # no use nodejs here changed to install via mise instead
    # ./nodejs.nix
    ./lsp.nix
    ./mise.nix
  ];
}

