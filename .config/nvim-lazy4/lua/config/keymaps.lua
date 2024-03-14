-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

require("config.keymaps.general")
require("config.keymaps.buffer-aka-tab")
require("config.keymaps.lsp")
require("config.keymaps.lsp-saga")
require("config.keymaps.code-action-menu")
require("config.keymaps.codeium")
require("config.keymaps.crates")
require("config.keymaps.silicon")
