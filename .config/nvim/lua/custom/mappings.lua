---@type MappingsTable
local M = {}

M.general = {}

M.nvimtree = {
  plugin = true,
  n = {
    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.vimNavigation = {
  n = {
    ["gl"] = { "$", "Go to the end of line", opts = { nowait = true }},
    ["gh"] = { "_", "Go to the begin of line", opts = { nowait = true }},
    ["ge"] = { "G", "Go to last line of file", opts = { nowait = true }},
  },
  v = {
    ["gl"] = { "$", "Go to the end of line", opts = { nowait = true }},
    ["gh"] = { "_", "Go to the begin of line", opts = { nowait = true }},
    ["ge"] = { "G", "Go to last line of file", opts = { nowait = true }},
  }
}

M.Redo = {
  n = {
    ["U"] = { "<C-r>", "redo", opts = { nowait = true }},
  }
}

M.CopyAndPaste = {
  n = {
    ["<leader>%"] = { "<cmd>%y+<cr>", "copy whole file", opts = { nowait = true }},
    ["<leader>y"] = { '"+y', "copy to clipboard", opts = { nowait = true }},
    ["<leader>p"] = { '"+p', "paste from clipboard", opts = { nowait = true }},
  },
  x = {
    ["<leader>y"] = { '"+y', "copy to clipboard", opts = { nowait = true }},
    ["<leader>p"] = { '"+p', "paste from clipboard", opts = { nowait = true }},
    -- when highlight text and paste the yanked text this will not yank the replaced text
    ["p"] = {'"_dP', "paste without yanked then replaced text", opts = {nowait = true}}
  }
}


M.TabBufferline = {
  n = {
    -- cycle through buffers
    ["L"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    ["H"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["<C-x>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}

M.Lsp = {
  n = {
    ["=="] = {
      function ()
        vim.lsp.buf.format({async = true})
      end,
      "format code"
    },
    ["<leader>."] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "lsp code_action",
    },
  }
}

-- more keybinds!

return M
