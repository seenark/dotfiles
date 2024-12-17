return {
  {
    "Wansmer/treesj",
    -- keys = {
    --   "<space>m",
    -- "<space>j",
    -- "<space>s",
    -- },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({--[[ your config ]]
        ---@type boolean Use default keymaps (<space>m - toggle, <space>j - join, <space>s - split)
        use_default_keymaps = false,
      })
    end,
  },
}
