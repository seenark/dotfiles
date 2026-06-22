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
                    { section = "header" },
                    { section = "keys",   gap = 1, padding = 1 },
                    -- { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 2 },
                    { section = "startup" },
                },
                {
                    pane = 2,
                    {
                        section = "terminal",
                        -- cmd = "chafa ~/.dotfiles/pokemon-image/bird.png --format symbols -c full --size 60x17 --stretch",
                        -- cmd = "ascii-image-converter ~/.dotfiles/pokemon-image/pen.png -C -c",
                        -- cmd = "asciiquarium",
                        -- cmd = "cmatrix -r -u 3",
                        -- cmd = "cmatrix -C yellow -u 7",
                        -- cmd = "sl -l | lolcat",
                        -- cmd = "nyancat",
                        -- cmd = "cbonsai -l -t 0.01 -w 1 -i",
                        cmd =
                        "/Users/atiwatseenark/.local/share/mise/installs/bun/1.2.21/bin/bun ~/.dotfiles/ascii/src/index.ts",

                        -- cmd = "gh screensaver -sfireworks",
                        -- cmd = "gh screensaver -s starfield -- --speed=10 --density=500",
                        -- random = 10,
                        height = 30,
                        -- width = 30,
                        -- padding = 1,
                        indent = 4,
                    },
                },
            },
        },
    },
}
