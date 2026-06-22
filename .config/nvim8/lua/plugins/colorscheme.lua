return {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
        transparent_background = true,
        color_overrides = {
            all = {},
            latte = {},
            frappe = {},
            macchiato = {},
            mocha = {
                rosewater = "#f4dbd6",
                flamingo  = "#f0c6c6",
                pink      = "#f5bde6",
                mauve     = "#e5c890", -- golden-yellow (types, constants)
                red       = "#ed8796",
                maroon    = "#ee99a0",
                peach     = "#f5a97f",
                yellow    = "#f9e2af", -- bright yellow (keywords, functions)
                green     = "#a6da95",
                teal      = "#2dc4b4", -- boosted teal (icons, special chars)
                sky       = "#1fc4c4", -- vivid cyan-teal (operators)
                sapphire  = "#56d4c8", -- mid teal (attributes, links)
                blue      = "#f9e2af", -- yellow (main accent)
                lavender  = "#e8d0a0", -- soft gold (variables, borders)
                -- bright text
                text      = "#eef0ff",
                subtext1  = "#dde3f8",
                subtext0  = "#cad3f5",
                overlay2  = "#b8c0e0",
                overlay1  = "#a0a8cc",
                overlay0  = "#8087a2",
                -- dark surfaces
                surface2  = "#4a4e66",
                surface1  = "#383b52",
                surface0  = "#28293e",
                base      = "#1e1e2e",
                mantle    = "#181825",
                crust     = "#11111b",
            },
        },
        lsp_styles = {
            underlines = {
                errors = { "undercurl" },
                hints = { "undercurl" },
                warnings = { "undercurl" },
                information = { "undercurl" },
            },
        },
        integrations = {
            aerial = true,
            alpha = true,
            cmp = true,
            dashboard = true,
            flash = true,
            fzf = true,
            grug_far = true,
            gitsigns = true,
            headlines = true,
            illuminate = true,
            indent_blankline = { enabled = true },
            leap = true,
            lsp_trouble = true,
            mason = true,
            mini = true,
            navic = { enabled = true, custom_bg = "lualine" },
            neotest = true,
            neotree = true,
            noice = true,
            notify = true,
            snacks = true,
            telescope = true,
            treesitter_context = true,
            which_key = true,
        },
    },
    specs = {
        {
            "akinsho/bufferline.nvim",
            optional = true,
            opts = function(_, opts)
                if (vim.g.colors_name or ""):find("catppuccin") then
                    opts.highlights = require("catppuccin.special.bufferline").get_theme()
                end
            end,
        },
    },
}
