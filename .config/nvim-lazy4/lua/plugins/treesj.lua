return {
    {
    "Wansmer/treesj",
    keys = {
      "<space>m",
      -- "<space>j",
      -- "<space>s",
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({--[[ your config ]]
      })
    end,
  },
  -- {
  --   "cshuaimin/ssr.nvim",
  --   keys = {
  --     {
  --       "<leader>sR",
  --       function()
  --         require("ssr").open()
  --       end,
  --       mode = { "n", "x" },
  --       desc = "Structural Replace",
  --     },
  --   },
  -- },

}
