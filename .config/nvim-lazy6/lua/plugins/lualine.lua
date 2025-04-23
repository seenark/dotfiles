return {
  {
    "nvim-lualine/lualine.nvim",
    enabled = true,
    opts = {
      -- for performance
      refresh = {
        statusline = 1500,
        tabline = 1500,
        winbar = 1500,
      },
    },
  },
}
