local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local opt = vim.opt
opt.clipboard = ""
opt.relativenumber = true
opt.scrolloff = 8

-- text behaviour
opt.iskeyword:append "-"
opt.joinspaces = false

autocmd("BufEnter", {
  callback = function()
    print("call BufEnter")
    vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
  end,
})

