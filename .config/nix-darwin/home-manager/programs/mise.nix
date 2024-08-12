{config, ...}: {
  programs.mise = {
    enable = true;
    enableFishIntegration = true;
    # enableZshIntegration = false;
    # enableBashIntegration = false;

    # for settings see [official docs](https://mise.jdx.dev/configuration.html#settings-file-config-mise-settings-toml)
    settings = {
      verbose = false;
      experimental = true;
      # disable_tools = ["node"];
    };

    # for global config see [official docs](https://mise.jdx.dev/configuration.html#global-config-config-mise-config-toml)
    # globalConfig = {
      # tools = {
      #   node = "lts";
      #   python = ["3.10" "3.11"];
      # };
      # aliases = {
      #   my_custom_node = "20";
      # };
    # };
  };
}
