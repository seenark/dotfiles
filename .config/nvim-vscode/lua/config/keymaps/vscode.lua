local map = require("config.keymaps.mapFn")
local vscode = require("vscode-neovim")
local vscall = vscode.call -- blocking
local vsnotify = vscode.notify -- show notification
local vsaction = vscode.action -- non blocking

-- map("n", "gl", "$", { desc = "go to end of line" })
-- {
--   "key": "cmd+e",
--   "command": "workbench.view.explorer",
--   "when": "!explorerViewletVisible"
-- }
function closeSideBar() 
    vsaction("workbench.action.toggleSidebarVisibility")
end 

function openFileFromExplorerThenCloseSideBar() 
    vsaction("list.focusDown")
    closeSideBar()
    isOpen = false
end
function openAndFocusFileExplorer() 
  vsaction("workbench.files.action.focusFilesExplorer")
end
local isOpen = false

function toggleFileExplorer() 
  if isOpen == true then
    isOpen = false
    closeSideBar()
    return
  end
  isOpen = true
  openAndFocusFileExplorer()
end

map("n", "EE", function()
  vsnotify("reset file explorer")
  isOpen = false
end, { desc = "reset file explorer" })

map("n", "<C-u><C-u>", function()
  toggleFileExplorer()
end, {desc = "toggle file explorer"})

-- workbench.view.explorer
map("n", "<leader>e", function()
  -- if isOpen == true then
  --   isOpen = false
  --   -- vsaction("workbench.view.explorer")
  --   vsaction("workbench.action.toggleSidebarVisibility")
  --   return
  -- end
  -- vsaction("workbench.view.explorer")
  openAndFocusFileExplorer()
  -- isOpen = true
end, { desc = "vscode file explorer" })

-- vsnotify("workbench.view.explorer")
-- vsnotify("workbench.action.toggleSidebarVisibility")

map("n", "<C-l><C-l>", function()
  vsaction("list.select")
  openFileFromExplorerThenCloseSideBar()
end, {desc = "ctrl + shift + L"})

map("n", "<C-x>", function()
  vsaction("workbench.action.closeActiveEditor")
end, { desc = "close active buffer" })

map("n", "<leader>k", function()
  vsaction("editor.action.showHover")
end, { desc = "open code action" })

map("n", "L", function()
  vsaction("workbench.action.nextEditor")
  -- vscall("workbench.action.nextEditor")
end, { desc = "open code action" })

map("n", "H", function()
  vsaction("workbench.action.previousEditor")
  -- vscall("workbench.action.previousEditor")
end, { desc = "open code action" })

map("n", "]e", function()
  vsaction("editor.action.marker.nextInFiles")
end, { desc = "open code action" })

map("n", "[e", function()
  vsaction("editor.action.marker.previousInFiles")
end, { desc = "open code action" })

map("n", "==", function()
  vsaction("editor.action.formatDocument")
end, { desc = "format document" })
