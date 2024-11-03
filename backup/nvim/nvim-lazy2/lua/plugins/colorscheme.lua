local M = {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        transparent_mode = true,
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = { style = "moon" },
    name = "tokyonight",
  },
  {
    "catppuccin/nvim",
    lazy = false,
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
        color_overrides = {
          all = {},
          mocha = {
            -- rosewater = "#f5e0dc",
            -- flamingo = "#f2cdcd",
            -- pink = "#f5c2e7",
            -- mauve = "#cba6f7",
            -- red = "#f38ba8",
            -- maroon = "#eba0ac",
            -- peach = "#fab387",
            -- yellow = "#f9e2af",
            -- green = "#a6e3a1",
            -- teal = "#94e2d5",
            -- sky = "#89dceb",
            -- sapphire = "#74c7ec",
            -- blue = "#89b4fa",
            blue = "#ffd866", -- folder
            -- lavender = "#b4befe",
            lavender = "#cfd7ff",
            -- text = "#cdd6f4",
            -- subtext1 = "#bac2de",
            -- subtext0 = "#a6adc8",
            -- overlay2 = "#9399b2",
            -- overlay1 = "#7f849c",
            -- overlay0 = "#6c7086",
            -- surface2 = "#585b70",
            -- surface1 = "#45475a",
            -- surface0 = "#313244",
            -- base = "#1e1e2e",
            -- mantle = "#181825",
            -- crust = "#11111b",
            -- mantle = "#000000",
          },
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
  { "savq/melange-nvim" },
  {
    "nordtheme/vim",
  },
  {
    "tiyn/tccs.nvim",
    opts = {
      options = {
        transparent = true,
      },
    },
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "warmer", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        transparent = true, -- Show/hide background
      })
      require("notify").setup({
        background_colour = "#000000",
      })
    end,
  },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        transparent_background = true,
        -- background_clear = { "float_win" },
        background_clear = {
          "float_win",
          -- "toggleterm",
          "telescope",
          "which-key",
          -- "renamer",
          "notify",
          -- "nvim-tree",
          "neo-tree",
          -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
        }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
      })
      -- dark2 = "#19181a",
      -- dark1 = "#221f22",
      -- background = "#2d2a2e",
      -- text = "#fcfcfa",
      -- accent1 = "#ff6188",
      -- accent2 = "#fc9867",
      -- accent3 = "#ffd866",
      -- accent4 = "#a9dc76",
      -- accent5 = "#78dce8",
      -- accent6 = "#ab9df2",
      -- dimmed1 = "#c1c0c0",
      -- dimmed2 = "#939293", -- border
      -- dimmed3 = "#727072",
      -- dimmed4 = "#5b595c",
      -- dimmed5 = "#403e41",
      require("notify").setup({
        background_colour = "#000000",
      })
    end,
  },
  -- { -- use the core.lua
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "monokai-pro",
  --   },
  -- },
}

return M
