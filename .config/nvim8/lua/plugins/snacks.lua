local ansiShadow = [[
 ██████╗ ██████╗ ██████╗ ███████╗    ███████╗ ██████╗  ██████╗ ██╗  ██╗
██╔════╝██╔═══██╗██╔══██╗██╔════╝    ██╔════╝██╔═══██╗██╔═══██╗██║ ██╔╝
██║     ██║   ██║██║  ██║█████╗      ███████╗██║   ██║██║   ██║█████╔╝
██║     ██║   ██║██║  ██║██╔══╝      ╚════██║██║   ██║██║   ██║██╔═██╗
╚██████╗╚██████╔╝██████╔╝███████╗    ███████║╚██████╔╝╚██████╔╝██║  ██╗
 ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝    ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝
]]

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  keys = {
    { "<leader>.", false },
  },
  ---@type snacks.Config
  opts = {
    explorer = {},
    picker = {
      sources = {
        explorer = {
          -- your explorer picker configuration comes here
          -- or leave it empty to use the default settings
          include = {
            ".git",
            ".config",
            "dist",
            ".moon",
            ".github",
          },
          exclude = {},
          auto_close = true,
        },
      },
    },
    dashboard = {
      pane_gap = 1, -- empty columns between vertical panes
      preset = {
        header = ansiShadow,
      },
      sections = {
        {
          pane = 1,
          {
            section = "terminal",
            cmd = "ascii-animation run",
            width = 80,
            indent = -10,
          },
          {
            section = "terminal",
            cmd = "ascii-animation run text-art --text '_         :) github#seenark (:' --text-amp 2.50 --text-bg none --text-border false --text-bright 1 --text-color-mode gradient-h --text-drop-shadow false --text-effect none --text-font 'Future Smooth' --text-freq 1 --text-glitch 0.15 --text-glow true --text-mirror false --text-overflow extend --text-palette ice --text-particles false --text-reflection false --text-speed 1.60 --text-voffset 0",
            width = 80,
            height = 5,
            indent = -26,
          },
          { section = "keys", gap = 1, padding = 1 },
          -- { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 2 },
          { section = "startup" },
        },
        -- {
        --   pane = 2,
        --   {
        --     section = "terminal",
        --     -- cmd = "chafa ~/.dotfiles/pokemon-image/bird.png --format symbols -c full --size 60x17 --stretch",
        --     -- cmd = "ascii-image-converter ~/.dotfiles/pokemon-image/pen.png -C -c",
        --     -- cmd = "asciiquarium",
        --     -- cmd = "cmatrix -r -u 3",
        --     -- cmd = "cmatrix -C yellow -u 7",
        --     -- cmd = "sl -l | lolcat",
        --     -- cmd = "nyancat",
        --     -- cmd = "cbonsai -l -t 0.01 -w 1 -i",
        --     cmd = "ascii-animation run ",
        --
        --     -- cmd = "gh screensaver -sfireworks",
        --     -- cmd = "gh screensaver -s starfield -- --speed=10 --density=500",
        --     -- random = 10,
        --     height = 30,
        --     -- width = 30,
        --     -- padding = 1,
        --     indent = 4,
        --   },
        -- },
      },
    },
  },
}
