return {
  "nvim-treesitter/nvim-treesitter",
  keys = {
    { "<c-space>", desc = "Increment selection" },
    { "<bs>", desc = "Schrink selection", mode = "x" },
  },
  ---@type TSConfig
  opts = {
    ensure_installed = {
      -- "bash",
      -- "help",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "json",
      "rust",
      "toml",
      "lua",
      "make",
      "markdown",
      "markdown_inline",
      -- "query",
      -- "regex",
      "vim",
      "yaml",
      -- "vue",
      -- "svelte",
      -- "terraform",
      "scss",
      "prisma",
      -- "go",
      -- "gomod", -- for go.mod file
      "gitignore",
      "dockerfile",
      -- "astro"
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = "<nop>",
        node_decremental = "<bs>",
      },
    },
  },
  ---@param opts TSConfig
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
