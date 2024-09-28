return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- key_labels = {
      --   ["m"] = "join/split code block",
      -- },
      window = {
        border = "double", -- none, single, double, shadow
      },
      -- plugins = { spelling = true },
      -- defaults = {
      --   mode = { "n", "v" },
      --   ["g"] = { name = "+goto" },
      --   ["gz"] = { name = "+surround" },
      --   ["]"] = { name = "+next" },
      --   ["["] = { name = "+prev" },
      --   ["<leader><tab>"] = { name = "+tabs" },
      --   ["<leader>b"] = { name = "+buffer" },
      --   ["<leader>c"] = { name = "+code" },
      --   ["<leader>f"] = { name = "+file/find" },
      --   ["<leader>g"] = { name = "+git" },
      --   ["<leader>gh"] = { name = "+hunks" },
      --   ["<leader>q"] = { name = "+quit/session" },
      --   ["<leader>s"] = { name = "+search" },
      --   ["<leader>u"] = { name = "+ui" },
      --   ["<leader>w"] = { name = "+windows" },
      --   ["<leader>x"] = { name = "+diagnostics/quickfix" },
      -- },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register(opts.defaults)
      wk.register({
        ["<leader>"] = {
          m = {
            name = "+join/split code block / Graddle",
          },
          r = {
            name = "+Rust",
            c = { "+Crates" },
          },
          t = {
            name = "+TFM File Manager",
            m = { "Sub command" },
          },
        },
      })
    end,
  },
}
