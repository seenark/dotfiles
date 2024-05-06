{ config, pkgs, ... }: {
  programs.fish = {
    enable = true;
    # fish_add_path /run/current-system/sw/bin/darwin-rebuild
    # set PATH /run/current-system/sw/bin $PATH

    interactiveShellInit = "";
    shellAbbrs = {
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";
      "....." = "cd ../../../..";
      nl = "nvim";
      ls = "eza -al --icons --group-directories-first --git";
      tree = "eza -T -L 2 -I 'node_modules|*.pyc'";
      hostsfile = "sudo NVIM_APPNAME=nvim-lazy4 nvim /etc/hosts";
      gcap = "git add . && git commit --amend --no-edit && git push -f";
    };

    functions = {
      darwin-switch-to-config = {
        body = "darwin-rebuild switch --flake ~/.dotfiles/.config/nix-darwin $argv";
        # onEvent = "darwin-rebuild";
      };
    };

    plugins = [
      {
        name = "bass";
        src = pkgs.fetchFromGitHub {
          owner = "edc";
          repo = "bass";
          rev = "2fd3d2157d5271ca3575b13daec975ca4c10577a";
          sha256 = "0mb01y1d0g8ilsr5m8a71j6xmqlyhf8w4xjf00wkk8k41cz3ypky";
        };
      }
      {
        name = "sdkman-for-fish";
        src = pkgs.fetchFromGitHub {
          owner = "reitzig";
          repo = "sdkman-for-fish";
          rev = "2.0.0";
          sha256 = "cgDTunWFxFm48GmNv21o47xrXyo+sS6a3CzwHlv0Ezo=";
        };
      }
      {
        name = "autopair";
        src = pkgs.fetchFromGitHub {
          owner = "reitzig";
          repo = "sdkman-for-fish";
          rev = "1.0.4";
          sha256 = "s1o188TlwpUQEN3X5MxUlD/2CFCpEkWu83U9O+wg3VU=";
        };
      }
    ];
  };
}
