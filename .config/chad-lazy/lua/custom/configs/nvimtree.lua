local nvimtreeOnAttach = require("custom.configs.nvimtree-onattach")
local M = {}

M.nvimtree = {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({
      on_attach = nvimtreeOnAttach,
      -- git support in nvimtree
      git = {
        enable = true,
        ignore = false,
      },
      view = {
        float = {
          enable = true,
          quit_on_focus_loss = true,
          open_win_config = {
            relative = "editor",
            border = "rounded",
            width = 50,
            height = 50,
            row = 1,
            col = 1,
          },
        },
        adaptive_size = true,
        side = "left",
        width = 50,
      },
      renderer = {
        highlight_git = true,
        root_folder_label = ":~:s?$?",
        icons = {
          show = {
            git = true,
          },
        },
      },
    })
  end,
}

return M
