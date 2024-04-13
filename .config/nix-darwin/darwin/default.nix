{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [
      pkgs.home-manager
    ];

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/src/github.com/evantravers/dotfiles";

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  nix = {
    package = pkgs.nix;
    settings = {
      "extra-experimental-features" = [ "nix-command" "flakes" ];
    };
  };

  # Create /etc/zshrc that loads the nix-darwin environment.
  # programs = {
  #  gnupg.agent.enable = true;
  #  zsh.enable = true; # default shell on catalina
  # };

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  # system.stateVersion = 4;

  fonts.fontDir.enable = true;
  fonts.fonts = with pkgs; [
    monaspace
    atkinson-hyperlegible
    fira-code-nerdfont
    jetbrains-mono
  ];

  services = {
    yabai = {
      enable = false;
      config = {
        layout = "bsp";
        mouse_modifier = "ctrl";
        mouse_drop_action = "stack";
        window_shadow = "float";
        window_gap = "20";
      };
      extraConfig = ''
        yabai -m rule --add app='Fantastical' display=east
        yabai -m rule --add app='OBS' display=east
        yabai -m rule --add app='Spotify' display=east

        yabai -m rule --add app='Cardhop' manage=off
        yabai -m rule --add app='Pop' manage=off
        yabai -m rule --add app='System Settings' manage=off
        yabai -m rule --add app='Timery' manage=off
      '';
    };
  };

  homebrew = {
    enable = true;

    casks = [
      "podman-desktop"
      "font-3270-nerd-font"
      "font-gohufont-nerd-font"
      "font-open-dyslexic-nerd-font"
      "font-sf-mono-nerd-font"
      "iina"
      "bruno"
      "google-cloud-sdk"
      "keycastr"
      "obs"
      "orbstack"
      "rectangle-pro"
      "shortcat"
      "via"
      "visual-studio-code"
      "figma"
      # "blackhole-2ch"
      # "wezterm"


      # "hammerspoon"
      # "anytype"
      # "amethyst"
      # "background-music"
      # "betterdisplay"
      # "google-chrome"
      # "pika"
      # "spacelauncher"


      # "bartender"
      # "brave-browser"
      # "firefox"
      # "hammerspoon"
      # "karabiner-elements"
      # "obsidian"
      # "raycast"
      # "soundsource"
      # "wezterm"
    ];


    ## mas is tools that allow us to install apps from the app store
    masApps = {
      # "Drafts" = 1435957248;
      # "Reeder" = 1529448980;
      # "Things" = 904280696;
      # "Timery" = 1425368544;
    };
  };

  system.defaults = {
    dock = {
      autohide = true;
      orientation = "bottom";
      # show-process-indicators = false;
      # show-recents = false;
      # static-only = false;
    };
    finder = {
      AppleShowAllExtensions = true;
      ShowPathbar = true;
      FXEnableExtensionChangeWarning = false;
    };
    # NSGlobalDomain = {
    # AppleKeyboardUIMode = 3;
    # "com.apple.keyboard.fnState" = true;
    # NSAutomaticWindowAnimationsEnabled = false;
    # };
  };
}
