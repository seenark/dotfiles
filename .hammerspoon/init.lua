local helpers = require("helpers")
local noti = helpers.notification
local key = helpers.bindHotKey
local keys = require("keys")
local ps = require("ps")
local window = require("window")
local dotaTinker = require("dota2.tinker")

helpers.reloadConfig()

-- hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "W", function()
-- 	-- hs.notify.new({ title = "Hammerspoon", informativeText = "Hello World" }):send()
-- 	noti.notification("Test", "Text")
-- end)

key({ "cmd", "alt", "ctrl" }, "W", function()
	noti("Test", "Text")
end)
-- Bind the pixel position and click function to a key combination
key({ "cmd", "shift" }, "P", helpers.getMousePosition)

-- show window title
key(keys.cmdCtrlAlt, "t", function()
	window.getActiveWindowTitle()
end)

-- show window title
key(keys.cmdCtrlAlt, "o", helpers.getPixelColorAtMouse)
key(keys.cmdCtrlAlt, "i", function()
	helpers.getPixelColorAtXY(78.390625, 46.6640625)
end)

key(keys.cmd, "h", function()
	helpers.performKeystrokeCombo(keys.cmd, "delete")
end)
