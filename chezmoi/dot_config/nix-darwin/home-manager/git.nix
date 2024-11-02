{
  programs.git = {
      enable = true;
      # includes = [
      #   { path = "~/.gitlocalconfig"; }
      # ];
      # aliases = {
      #   ap = "add -p";
      # };
      # extraConfig = {
      #   pull.ff = "only";
      # };
  };
  home.sessionVariables = {
    NVIM_APPNAME = "nvim-lazy4";
    EDITOR = "nvim";
  };
}
