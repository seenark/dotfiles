return {
  {
    "Wansmer/treesj",
    -- keys = {
    -- "<space>m",
    -- "<space>j",
    -- "<space>s",
    -- },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    vscode = true,
    config = function()
      require("treesj").setup({--[[ your config ]]
        ---@type boolean Use default keymaps (<space>m - toggle, <space>j - join, <space>s - split)
        use_default_keymaps = false,
      })
    end,
    keys = {
      {
        mode = "n",
        "<leader>mm",
        "<cmd>TSJToggle<cr>",
        desc = "toggle Split / Join node under cursor (split if one-line and join if multiline)",
      },
    },
  },
}
