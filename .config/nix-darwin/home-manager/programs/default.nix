{ config, pkgs, ... }:

{
  imports = [
    ./zoxide.nix
    ./starship.nix
    ./atuin.nix
    ./bat.nix
    ./fish.nix
    ./direnv.nix
    ./nodejs.nix
    ./lsp.nix
  ];
}

