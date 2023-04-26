local M = {}

M.treesitter = {
  "nvim-treesitter/nvim-treesitter",
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
      "regex",
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
      -- "astro"  },
    },
  },
}

return M
