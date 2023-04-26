local api = vim.api
local autocmd = api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

autocmd({ "FileType" }, {
-- why BufEnter does not work as before?
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
})

local opt = vim.opt
opt.clipboard = ""
opt.relativenumber = true
opt.scrolloff = 8

-- text behaviour
opt.iskeyword:append("-")
opt.joinspaces = false


-- folding
opt.foldmethod = "indent"
opt.foldenable = false
opt.foldlevel = 99

