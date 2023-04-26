local M = {}

-- cmp emoji
M.emoji = {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-emoji",
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" }, { name = "copilot" } }))
    return require("plugins.configs.cmp")
  end,
}
-- code mapping
M.SymbolOutline = {
  "simrat39/symbols-outline.nvim",
  keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  config = true,
}

-- github copilot
M.CopilotCmp = {
  "zbirenbaum/copilot-cmp",
  enable = true,
  after = { "copilot.lua" },
  config = function()
    require("copilot_cmp").setup()
  end,
}

M.Copilot = {
  "zbirenbaum/copilot.lua",
  enabled = true,
  cmd = "Copilot",
  -- event = "InsertEnter",
  -- setup = function()
  --   vim.api.nvim_set_keymap("i", "<C-x><C-o>", "<cmd>Copilot<CR>", { silent = true, noremap = true })
  -- end,
  opts = {
    panel = {
      enabled = true,
      auto_refresh = false,
      keymap = {
        jump_prev = "[[",
        jump_next = "]]",
        accept = "<CR>",
        refresh = "gr",
        open = "<M-CR>",
      },
      layout = {
        position = "bottom", -- top | left | right
        ratio = 0.4,
      },
    },
    suggestion = {
      enabled = false,
      auto_trigger = true,
      debounce = 75,
      keymap = {
        accept = "<M-l>",
        accept_word = false,
        accept_line = false,
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
      },
    },
    filetypes = {
      yaml = true,
      markdown = true,
      help = false,
      gitcommit = false,
      gitrebase = false,
      hgcommit = false,
      svn = false,
      cvs = false,
      dockerfile = true,
      rust = true,
      go = true,
      typescript = true,
      javascript = true,
      javascriptreact = true,
      typescriptreact = true,
      python = false,
      python3 = false,
      lua = true,
      cpp = false,
      c = false,
      java = false,
      html = true,
      css = true,
      json = true,
      toml = true,
      sh = true,
      zsh = true,
      fish = false,
      vim = true,
      tex = true,
      r = false,
      rmd = false,
      php = false,
      dart = false,
      sql = true,
      kotlin = false,
      hcl = false,
      elixir = false,
      ["."] = true,
    },
  },
}

return M
