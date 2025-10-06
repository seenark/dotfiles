local M = {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  cmd = "Neotree",
  opts = {
    close_if_last_window = true,
    popup_border_style = "rounded", --"NC", "double", "none", "rounded", "shadow", "single" or "solid"
    default_component_configs = {
      container = {
        enable_character_fade = false,
      },
    },
    window = {
      position = "float", -- left, right, float, split
      width = 40, -- applies to left and right positions
      popup = { -- settings that apply to float position only
        size = {
          height = "80%",
          width = "50",
        },
        position = "5%", -- 50% means center it
        -- you can also specify border here, if you want a different setting from
        -- the global popup_border_style.
      },
      mapping_options = {
        noremap = true,
        nowait = true,
      },
    },
    filesystem = {
      filtered_items = {
        visible = false, -- when true, they will just be displayed differently than normal items
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_hidden = true, -- only works on Windows for hidden files/directories
        hide_by_name = {
          --"node_modules"
        },
        hide_by_pattern = { -- uses glob style patterns
          --"*.meta",
          --"*/src/*/tsconfig.json",
          ".git",
        },
        always_show = { -- remains visible even if other settings would normally hide it
          --".gitignored",
        },
        never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
          ".DS_Store",
          "thumbs.db",
        },
        never_show_by_pattern = { -- uses glob style patterns
          --".null-ls_*",
        },
      },
    },
  },
}

return M
