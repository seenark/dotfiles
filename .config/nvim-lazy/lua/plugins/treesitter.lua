return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
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
    context_commentstring = {
      enable = true,
      config = {
        javascript = {
          __default = "// %s",
          jsx_element = "{/* %s */}",
          jsx_fragment = "{/* %s */}",
          jsx_attribute = "// %s",
          comment = "// %s",
        },
        typescript = { __default = "// %s", __multiline = "/* %s */" },
      },
    },
  },
  ---@param opts TSConfig
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
