-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.clipboard = ""
opt.scrolloff = 8
opt.iskeyword:append("-")
opt.iskeyword:append("$")
opt.iskeyword:append("#")
opt.signcolumn = "yes:3"
