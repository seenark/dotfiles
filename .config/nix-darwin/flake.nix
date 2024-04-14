{
  description = "HadesGod's Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs@{ self, darwin, nixpkgs, flake-utils, home-manager, ... }:
    let
      configuration = { pkgs, ... }: {
        # List packages installed in system profile. To search by name, run:
        # $ nix-env -qaP | grep wget
        environment.systemPackages =
          [
            pkgs.vim
          ];

        # Auto upgrade nix package and the daemon service.
        services.nix-daemon.enable = true;
        # nix.package = pkgs.nix;

        # Necessary for using flakes on this system.
        nix.settings.experimental-features = "nix-command flakes";

        # Create /etc/zshrc that loads the nix-darwin environment.
        # programs.zsh.enable = true; # default shell on catalina
        programs.fish.enable = true;

        # Set Git commit hash for darwin-version.
        system.configurationRevision = self.rev or self.dirtyRev or null;

        # Used for backwards compatibility, please read the changelog before changing.
        # $ darwin-rebuild changelog
        system.stateVersion = 4;

        # The platform the configuration will be used on.
        nixpkgs.hostPlatform = "aarch64-darwin";
      };
    in
    {
      # Build darwin flake using:
      # $ darwin-rebuild build --flake .#Atiwats-Mac-Studio

      #      darwinConfigurations."Atiwats-Mac-Studio" = nix-darwin.lib.darwinSystem {
      #        modules = [ configuration ];
      #      };

      darwinConfigurations = {
        "Atiwats-Mac-Studio" = darwin.lib.darwinSystem {
          system = "aarch64-darwin";
          modules = [
            configuration
            ./darwin
            home-manager.darwinModules.home-manager
            {
              home-manager = {
                users.atiwatseenark = import ./home-manager/home.nix;
              };
              users.users.atiwatseenark.home = "/Users/atiwatseenark";
            }
          ];
        };
        "Atiwats-MacBook-Air" = darwin.lib.darwinSystem {
          system = "aarch64-darwin";
          modules = [
            configuration
            ./darwin
            home-manager.darwinModules.home-manager
            {
              home-manager = {
                users.atiwatseenark = import ./home-manager/home.nix;
              };
              users.users.atiwatseenark.home = "/Users/atiwatseenark";
            }
          ];
        };
      };

      # Expose the package set, including overlays, for convenience.
      # darwinPackages = self.darwinConfigurations."Atiwats-Mac-Studio".pkgs;
    };
}
