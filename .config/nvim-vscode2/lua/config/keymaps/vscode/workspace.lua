local map = require("config.keymaps.mapFn")
local fn = require("config.keymaps.vscode.vscodeFn")

local ac = fn.action

map("n", "<leader>e", ac("workbench.view.explorer"), { desc = "open explorer bar" })
