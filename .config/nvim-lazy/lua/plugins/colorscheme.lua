local M = {

  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = function()
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
    lazy = true,
    name = "ayu",
    opts = {
      colorscheme = "ayu",
    },
    config = function()
      require("ayu").setup({
        mirage = false,
        overrides = {},
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = function()
      return {
        colorscheme = "catppuccin",
        -- colorscheme = "ayu",
      }
    end,
  },
}

return M
