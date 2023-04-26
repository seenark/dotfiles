local M = {}

local opts = { noremap = true, silent = true }
M.general = {
  n = {
    -- Move text up and down
    ["%"] = { "<cmd> %y+ <CR>", "copy whole file" },
    ["<leader>y"] = { '"+y', "Copy to clipboard", opts },
    ["<leader>p"] = { '"+p', "Paste from clipboard", opts },
    ["gl"] = { "$", "go to end of line", opts },
    ["gh"] = { "_", "go to begin of line", opts },
    ["ge"] = { "G", "go to bottom of page", opts },
    -- ["w"] = { "<Esc>vw", opts },
    -- ["e"] = { "<Esc>lve", opts },
    -- ["b"] = { "<Esc>hvb", opts },
  },
  v = {
    -- ["w"] = { "<Esc>vw", opts },
    -- ["e"] = { "<Esc>lve", opts },
    -- ["b"] = { "<Esc>hvb", opts },
  },
  x = {
    ["<leader>y"] = { '"+y', "Copy to clipboard", opts },
    ["<leader>p"] = { '"+p', "Paste from clipboard", opts },
  },
  -- v = {
  --   ["<A-k>"] = { ":m .-2<CR>==", "Move text up" },
  --   ["<A-j>"] = { ":m .+1<CR>==", "Move text down" },
  -- },
  -- x = {
  --   ["J"] = { ":move '>+1<CR>gv-gv", "[Visual Block] Move text down" },
  --   ["K"] = { ":move '<-2<CR>gv-gv", "[Visual Block] Move text up" },
  --   ["<A-j>"] = { ":move '>+1<CR>gv-gv", "[Visual Block] Move text down" },
  --   ["<A-k>"] = { ":move '<-2<CR>gv-gv", "[Visual Block] Move text up" },
  -- },
}

M.NvimTree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle NvimTree" },
    -- ["<leader>w"] = {
    --   function()
    --     require("nvchad_ui.tabufline").close_buffer()
    --   end,
    --   "close buffer",
    -- },
  },
}

M.Lsp = {
  n = {
    ["=="] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },
    ["<leader>k"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "lsp hover",
    },
    -- ["<leader>."] = {
    --   function()
    --     vim.lsp.buf.code_action()
    --   end,
    --   "lsp code_action",
    -- },
  },
}

-- M.cmp = {
--   n = {
--     ["C-Space>"] = {  }
--   }
-- }

M.Move = {
  n = {
    ["<A-j>"] = { ":MoveLine(1) <CR>", "Move line down", opts },
    ["<A-k>"] = { ":MoveLine(-1) <CR>", "Move line down", opts },
    ["<A-h>"] = { ":MoveHChar(-1) <CR>", "Move horizontal character left", opts },
    ["<A-l>"] = { ":MoveHChar(1) <CR>", "Move horizontal character right", opts },
  },
  v = {
    ["<A-j>"] = { ":MoveBlock(1) <CR>", "Move block down", opts },
    ["<A-k>"] = { ":MoveBlock(-1) <cr>", "move block down", opts },
    ["<A-h>"] = { ":MoveHBlock(-1) <CR>", "Move block down", opts },
    ["<A-l>"] = { ":MoveHBlock(1) <CR>", "Move block down", opts },
  },
}

M.CodeActionMenu = {
  n = {
    ["<leader>."] = { "<cmd>CodeActionMenu<CR>", "Open Code action menu" },
  },
}

M.terminal = {
  n = {
    ["<A-b>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
  },
  t = {
    ["<A-b>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
  },
}

M.tabufline = {
  n = {
    ["gn"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    ["gp"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },

    -- pick buffers via numbers
    ["<leader>b"] = { "<cmd> TbufPick <CR>", "Pick buffer" },
  }
}

return M
