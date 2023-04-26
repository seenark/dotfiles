-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
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

-- buffers
if Util.has("bufferline.nvim") then
  map("n", "gp", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "gn", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
  map("n", "<C-x>", "<cmd>bdelete<cr>", { desc = "close buffer" })
else
  map("n", "gp", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "gn", "<cmd>bnext<cr>", { desc = "Next buffer" })
  map("n", "<C-x>", "<cmd>bdelete<cr>", { desc = "close buffer" })
end

-- Lsp
---- format code style
map("n", "==", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "format code" })
---- hover
-- map("n", "<leader>k", function()
--   vim.lsp.buf.hover()
-- end, { desc = "lsp hover" })

-- LspSaga
map("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>", { desc = "LspSaga hover" })
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "LspSaga hover" })
map("n", "<leader>cs", "<cmd>Lspsaga outline<CR>", { desc = "LspSaga outline" })
map("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "LspSaga diagnostic jump prev" })
map("n", "<leader>cdp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "LspSaga diagnostic jump prev" })
map("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "LspSaga diagnostic jump next" })
map("n", "<leader>cdn", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "LspSaga diagnostic jump next" })
map("n", "<leader>cdb", "<cmd>Lspsaga show_buf_diagnostics<CR>", { desc = "LspSaga Show buffer diagnostics" })
map("n", "[e", function()
  require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Diagnostic jump with filters such as only jumping prev to an error" })
map("n", "]e", function()
  require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Diagnostic jump with filters such as only jumping next to an error" })
map("n", "<leader>cdw", "<cmd>Lspsaga show_workspace_diagnostics<CR>", { desc = "Show workspace diagnostics" })

-- code action menu
map("n", "<leader>.", "<cmd>CodeActionMenu<cr>", { desc = "Open Code Action Menu" })

-- gitui
-- please install gitui first
map("n", "<leader>gg", function()
  Util.float_term({ "gitui" }, { cwd = Util.get_root() })
end, { desc = "GitUI (root dir)" })
map("n", "<leader>gG", function()
  Util.float_term({ "gitui" })
end, { desc = "GitUI (cwd)" })

-- nvterm open terminal
map("n", "<A-b>", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Open Horizontal Terminal" })
map("n", "<A-v>", function()
  require("nvterm.terminal").toggle("vertical")
end, { desc = "Open Vertical Terminal" })
map("n", "<A-i>", function()
  require("nvterm.terminal").toggle("float")
end, { desc = "Open Float Terminal" })
map("t", "<A-b>", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Open Horizontal Terminal" })
map("t", "<A-v>", function()
  require("nvterm.terminal").toggle("vertical")
end, { desc = "Open Vertical Terminal" })
map("t", "<A-i>", function()
  require("nvterm.terminal").toggle("float")
end, { desc = "Open Float Terminal" })

-- crates
map("n", "<leader>rcu", function()
  require("crates").upgrade_all_crates()
end, { desc = "Upgrate all crates version" })
