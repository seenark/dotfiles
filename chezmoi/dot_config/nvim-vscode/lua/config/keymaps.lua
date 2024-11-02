-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "gl", "$", { desc = "go to end of line" })
map("v", "gl", "$", { desc = "go to end of line" })
map("n", "gh", "_", { desc = "go to begin of line" })
map("v", "gh", "_", { desc = "go to begin of line" })
map("n", "ge", "G", { desc = "go to last line" })
map("x", "ge", "G", { desc = "go to last line" })

-- redo
map("n", "U", "<C-r>", { desc = "redo" })

-- copy and paste
map("n", "<leader>%", "<cmd>%y+<cr>", { desc = "copy whole file" })
map("n", "<leader>y", '"+y', { desc = "Copy to clipboard" })
map("n", "<leader>p", '"+p', { desc = "Paste from clipboard" })
map("x", "<leader>y", '"+y', { desc = "Copy to clipboard" })
map("x", "<leader>p", '"+p', { desc = "Paste from clipboard" })

-- when highlight text and paste the yanked text this will not yank the replaced text
map("x", "p", '"_dP')

---- require ----
require("config.keymaps.vscode")
