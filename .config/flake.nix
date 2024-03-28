{
  description = "my first flake";
  inputs = {
    # where we get most of our software.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Manages config links things into home directory
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # controls system level software and settings including fonts
    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs: {
    darwinConfigurations.atiwatseenark = inputs.darwin.lib.darwinSystem { 
      system = "aarch64-darwin";
      pkgs = import inputs.nixpkgs {
        system = "aarch64-darwin";
      };
    };

    modules = [
      ({pkgs, ...}: {
        # here go the darwin preferences and config items
        programs.zsh.enable = false;
        environment.shells = [ pkgs.bash pkgs.zsh ];
        environment.loginShell = pkgs.zsh;
        nix.extraOptions = ''
          experimental-features = nix-command flakes
        '';

        systemPackages = [ pkgs.coreutils ];
        system.keyboard.enableKeyMapping = true;
        system.keyboard.remapCapsLockToEscape = true;
        fonts.fontDir.enable = false; # DANGER
        fonts.fonts = [ (pkgs.nerdfonts.override { fonts = ["Meslo"]; }) ];
        services.nix-daemon.enable = true; # Keep update so it's true
        # system.defaults.finder.AppleShowAllExtensions = true;
        # system.defaults.finder._FXShowPosixPathInTitle = true;
        # system.defaults.dock.autohide = true;
        # system.defaults.NSGlobalDomain.AppleShowAllExtensions = true;
        system.defaults.NSGlobalDomain.InitialKeyRepeat = 14;
        system.defaults.NSGlobalDomain.KeyRepeat = 1;
      })

      (inputs.home-manager.darwinModules.home-manager {
        home-manager = {
          useGlobalPkgs = true;
          useUserPkgs = true;
          users.atiwatseenark.imports = [
            ({pkgs, ... }: {
             # specify my home-manager configs
             home.packages = [ pkgs.ripgrep pkgs.fd pkgs.less ];
             home.sessionVariables = {
                PAGER = "less"
                CLICLOCOR = 1;
                EDITOR = "nvim"
             };

             programs.bat.enable = true;
             programs.bat.config.theme = "TwoDark";
             programs.fzf.enableZshIntegration = true;
             programs.fzf.enableFishIntegration = true;
             # programs.eza.enable = true;
             programs.starship.enable = true;
             programs.starship.enableFishIntegration = true;

            })
          ];
        };
      })
    ];
  };
}
