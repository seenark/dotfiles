{ pkgs, ... }: {

  # see language server here in Helix guide then search in NixPkgs
  # https://github.com/helix-editor/helix/wiki/Language-Server-Configurations


  # NodeJS package in NixOS pkgs 
  # https://github.com/NixOS/nixpkgs/blob/e8c05fe2e1a31a92731b92b6f78c2ff997d25e61/pkgs/development/node-packages/node-packages.json#L264

  home.packages = with pkgs; [
    typescript
    nodePackages.typescript-language-server # TS
    nodePackages.bash-language-server # TS
    dockerfile-language-server-nodejs # TS
    docker-compose-language-service # TS
    markdown-oxide # Rust
    tailwindcss-language-server # TS
    taplo # Rust
    vscode-langservers-extracted # JS
    yaml-language-server # TS
    helm-ls # C + Go
    lua-language-server # Lua
    nodePackages_latest.svelte-language-server # TS
    nodePackages_latest."@prisma/language-server" # TS
    # Astro helix not yet supported LSP
    # nodePackages_latest."@astrojs/language-server" # TS
    elixir-ls # Elixir
    gopls # Go
    golangci-lint # Go
    nil # Rust
    metals # Scala
    ansible-language-server # TS
    biome # Rust
    gleam # Gleam
  ];

}
