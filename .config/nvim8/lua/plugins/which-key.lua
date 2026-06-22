return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    enabled = true,
    opts = {
      ---@type false | "classic" | "modern" | "helix"
      preset = "helix",
      -- window = {
      --   border = "double", -- none, single, double, shadow
      -- },
      ---@type wk.Win.opts
      win = {
        border = "double", -- none, single, double, shadow
        wo = {
          winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
        },
      },
    },
    keys = {},
    init = function(_, opts)
      local wk = require("which-key")
      -- wk.setup(opts)
      -- wk.add(opts.defaults)
      wk.add({
        { "<leader>gp", group = "Graddle / +join/split code block" },
        { "<leader>cb", group = "comment box", desc = "□ Comment box" },
      })
      -- wk.register({
      --   ["<leader>"] = {
      --     m = {
      --       name = "Graddle / +join/split code block",
      --     },
      --     r = {
      --       name = "+Rust",
      --       c = { "+Crates" },
      --     },
      --     -- t = {
      --     --   name = "+TFM File Manager",
      --     --   m = { "Sub command" },
      --     -- },
      --     c = {
      --       name = "code",
      --       b = { "□ Comment box" },
      --     },
      --   },
      -- })
    end,
  },
}
