return {
  "gbprod/yanky.nvim",
  keys = {
    {
      "<leader>P",
      function()
        require("telescope").extensions.yank_history.yank_history({})
      end,
      desc = "Open Yank History",
    },
  },
}
