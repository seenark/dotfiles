local M = {}

M.cmd = "cmd"
M.ctrl = "ctrl"
M.alt = "alt"
M.shift = "shift"
M.none = {}

-- combo 2 key
-- cmd
M.cmdCtrl = { "cmd", "ctrl" }
M.cmdAlt = { "cmd", "alt" }
M.cmdShift = { "cmd", "shift" }
-- ctrl
M.ctrlAlt = { "ctrl", "alt" }
M.ctrlShift = { "ctrl", "shift" }

-- combo 3 key
-- cmd
M.cmdCtrlAlt = { "cmd", "ctrl", "alt" }
M.cmdCtrlShift = { "cmd", "ctrl", "shift" }
M.cmdAltShift = { "cmd", "alt", "shift" }
M.cmdCtrlAltShift = { "cmd", "ctrl", "alt", "shift" }
-- ctrl
M.ctrlAltShift = { "ctrl", "alt", "shift" }

M.F2 = "F2"
M.F3 = "F3"
M.Enter = "return"

return M
