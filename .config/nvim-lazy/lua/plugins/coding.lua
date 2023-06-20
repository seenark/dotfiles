return {
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },

  -- refactoring
  {
    "ThePrimeagen/refactoring.nvim",
    keys = {
      {
        "<leader>r",
        function()
          require("refactoring").select_refactor()
        end,
        mode = "v",
        noremap = true,
        silent = true,
        expr = false,
      },
    },
    opts = {},
  },

  -- code mapping
  -- symbols outline change to use from LspSaga it's better looking
  -- {
  --   "simrat39/symbols-outline.nvim",
  --   keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  --   config = true,
  -- },

  -- cmp
  {
    "hrsh7th/nvim-cmp",

    dependencies = {
      "hrsh7th/cmp-emoji",
      {
        "zbirenbaum/copilot-cmp",
        opts = {},
      },
      {
        "roobert/tailwindcss-colorizer-cmp.nvim",
        -- optionally, override the default options:
        config = function()
          require("tailwindcss-colorizer-cmp").setup({
            color_square_width = 3,
          })
        end,
      },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(
        vim.list_extend(
          opts.sources,
          { { name = "emoji" }, { name = "copilot" }, { name = "codeium" }, { name = "crates", priority = 750 } }
        )
      )

      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icon
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },

  -- Rust crates assist
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    dependencies = {
      {
        "hrsh7th/nvim-cmp",
        "nvim-lua/plenary.nvim",
      },
    },
    config = function(_, opts)
      local crates = require("crates")
      crates.setup(opts)
    end,
  },
  -- DAP
  -- {
  --   "mfussenegger/nvim-dap",
  -- },

  -- github copilot
  {
    "zbirenbaum/copilot-cmp",
    enabled = false,
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {

    "zbirenbaum/copilot.lua",
    enabled = false,
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
  },
  -- END github copilot

  -- Codeium
  {
    {
      "jcdickinson/http.nvim",
      build = "cargo build --workspace --release",
    },
    {
      "jcdickinson/codeium.nvim",
      dependencies = {
        "jcdickinson/http.nvim",
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
      },
      config = function()
        require("codeium").setup({})
      end,
    },
  },
}
