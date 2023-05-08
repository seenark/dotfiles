local M = {

  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = { style = "moon" },
    name = "tokyonight",
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {
          -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
        show_end_of_buffer = false, -- show the '~' characters after the end of buffers
        term_colors = true,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
      })

      require("notify").setup({
        background_colour = "#000000",
      })
    end,
  },
  {
    "Shatur/neovim-ayu",
    lazy = false,
    name = "ayu",
    opts = {
      colorscheme = "ayu",
      mirage = false,
      overrides = {},
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "ayu",
    },
  },
}

return M
