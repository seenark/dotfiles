local map = require("config.keymaps.mapFn")
local fn = require("config.keymaps.vscode.vscodeFn")

local ac = fn.action

map("n", "<C-x>", ac("workbench.action.closeActiveEditor"), { desc = "close active buffer" })

map("n", "K", ac("editor.action.showHover"), { desc = "show hover" })
map("n", "<leader>k", ac("editor.action.showHover"), { desc = "show hover" })

map("n", "]e", ac("editor.action.marker.nextInFiles"), { desc = "next error, warn in file" })
map("n", "[e", ac("editor.action.marker.prevInFiles"), { desc = "prev error, warn in file" })
map("n", "==", ac("editor.action.formatDocument"), { desc = "prev error, warn in file" })
map("n", "u", ac("undo"), { desc = "undo" })
map("n", "U", ac("redo"), { desc = "redo" })
map("n", "<leader>.", ac("editor.action.quickFix"), { desc = "open quick fix" })
