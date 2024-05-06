-- return {
--   "DreamMaoMao/yazi.nvim",
--   enabled = true,
--   keys = {
--     { "<leader>fe", "<cmd>Yazi<CR>", "desc = Toggle Yazi" },
--   },
--   -- {
--   --   "SR-Mystar/yazi.nvim",
--   --   enabled = false,
--   --   lazy = true,
--   --   cmd = "Yazi",
--   --   opts = {},
--   --   keys = {
--   --     { "<leader>fe", "<cmd>Yazi<CR>", "desc = Toggle Yazi" },
--   --   },
--   -- },
-- }

return {
  ---@type LazySpec
  {
    "mikavilpas/yazi.nvim",
    enabled = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
    keys = {
      {
        -- 👇 choose your own keymapping
        "<leader>-",
        function()
          require("yazi").yazi()
        end,
        { desc = "Open the file manager" },
      },
    },
    ---@type YaziConfig
    opts = {
      open_for_directories = false,
    },
  },
}
