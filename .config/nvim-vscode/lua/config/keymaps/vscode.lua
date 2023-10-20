local map = require("config.keymaps.mapFn")
local vscode = require("vscode-neovim")
local vscall = vscode.call -- blocking
local vsnotify = vscode.notify -- non blocking

-- map("n", "gl", "$", { desc = "go to end of line" })
-- {
--   "key": "cmd+e",
--   "command": "workbench.view.explorer",
--   "when": "!explorerViewletVisible"
-- }
map("n", "<leader>e", function()
  vsnotify("workbench.view.explorer")
end, { desc = "vscode file explorer" })
-- vsnotify("workbench.view.explorer")
-- vsnotify("workbench.action.toggleSidebarVisibility")

map("n", "<C-x>", function()
  vsnotify("workbench.action.closeActiveEditor")
end, { desc = "close active buffer" })

map("n", "<leader>k", function()
  vsnotify("editor.action.showHover")
end, { desc = "open code action" })

map("n", "L", function()
  vsnotify("workbench.action.nextEditor")
end, { desc = "open code action" })

map("n", "H", function()
  vsnotify("workbench.action.previousEditor")
end, { desc = "open code action" })

map("n", "]e", function()
  vsnotify("editor.action.marker.nextInFiles")
end, { desc = "open code action" })

map("n", "[e", function()
  vsnotify("editor.action.marker.previousInFiles")
end, { desc = "open code action" })

map("n", "==", function()
  vsnotify("editor.action.formatDocument")
end, { desc = "format document" })
