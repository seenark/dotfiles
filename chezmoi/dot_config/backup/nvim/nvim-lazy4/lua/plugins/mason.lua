return {
  {

    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- https://mason-registry.dev/registry/list
        "stylua",
        "shellcheck",
        "shfmt",
        "prettierd",
        "html-lsp",
        "css-lsp",
        "cssmodules-language-server",
        -- "eslint_d",
        "jsonlint",
        "prettierd",
        "prisma-language-server",
        "js-debug-adapter",
        "yamlfmt",
        "biome",

        -- #### elixir
        -- "elixir-ls",
        -- "lexical", -- next gen elixir lsp
        -- "nextls",
        -- #### elixir

        -- ##### already installed by "Folke's plugins" #####
        -- "typescript-language-server"
        -- "tailwindcss-language-server", -- already installed by "Folke"
        -- "yaml-language-server",
        -- "rust-analyzer",
        -- "rustfmt",
        -- "codelldb",
        -- "taplo",
        -- ##### already installed by "Folke's plugins" #####

        -- "prosemd-lsp", --[[ for markdown ]]
        -- "solang",
        -- "svelte-language-server",
        -- "biome",
      },
    },
  },
}
