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
        vim.list_extend(opts.sources, { { name = "emoji" }, { name = "codeium" }, { name = "crates" } })
      )

      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icon
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },

  -- Codeium
  {
    {
      -- "jcdickinson/http.nvim",
      build = "cargo build --workspace --release",
    },
    {
      "jcdickinson/codeium.nvim",
      commit = "b1ff0d6c993e3d87a4362d2ccd6c660f7444599f",
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
