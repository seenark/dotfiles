return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          -- "dockerfile",
          -- "json",
          -- "json5",
          -- "jsonc",
          "ron",
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
          "svelte",
          -- "terraform",
          "scss",
          "prisma",
          -- "go",
          -- "gomod", -- for go.mod file
          "gitignore",
        })
      end
    end,
  },
}
