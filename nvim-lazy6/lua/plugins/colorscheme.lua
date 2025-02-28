return {
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
    end,
  },
}
