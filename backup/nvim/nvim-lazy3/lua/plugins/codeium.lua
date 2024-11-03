-- this codium need to config 'nvim-cmp' as well
return {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "å", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
      vim.keymap.set("i", "ß", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true })
      vim.keymap.set("i", "Å", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true })
      vim.keymap.set("i", "Í", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, 2, require("lazyvim.util").lualine.cmp_source("codeium"))
    end,
  },

  -- below plugins both are no longer maintain
  -- {
  --   "jcdickinson/http.nvim",
  --   build = "cargo build --workspace --release",
  -- },
  -- {
  --   "jcdickinson/codeium.nvim",
  --   commit = "b1ff0d6c993e3d87a4362d2ccd6c660f7444599f",
  --   dependencies = {
  --     "jcdickinson/http.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "hrsh7th/nvim-cmp",
  --   },
  --   config = function()
  --     require("codeium").setup({})
  --   end,
  -- },
}
