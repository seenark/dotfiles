{ config, ... }: {
  programs.atuin = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      db_path = "~/.local/share/atuin/history.db";
      enter_accept = true;
    };
  };
}
