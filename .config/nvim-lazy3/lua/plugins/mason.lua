return {
  {

    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
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
        -------- already installed by "Folke's plugins"
        -- "typescript-language-server"
        -- "tailwindcss-language-server", -- already installed by "Folke"
        -- "yaml-language-server",
        -- "rust-analyzer",
        -- "rustfmt",
        -- "codelldb",
        -- "taplo",
        -------- already installed by "Folke's plugins"

        -- "prosemd-lsp", --[[ for markdown ]]
        -- "solang",
        -- "svelte-language-server",
        -- "biome",
      },
    },
  },
}
