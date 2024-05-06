return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
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
        "gleam",
        "nix",
      },
      highlight = {
        enable = true,
        disable = function(_, buf)
          local max_filesize = 10000 * 1024 -- 10 MB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            vim.notify("Tree sitter disabled")
            return true
          end
        end,
      },
    },
  },
}
