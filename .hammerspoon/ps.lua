local helpers = require("helpers")
local window = require("window")
local keyCombo = helpers.performKeystrokeCombo
local keys = require("keys")
local key = helpers.bindHotKey

local M = {}
M.appName = "Adobe Photoshop"

M.sharp_lowTexture = function()
	local currentTabTitle = window.getActiveWindowTitle()
	print("current tab title" .. currentTabTitle)
	window.focusApplication(M.appName)
	helpers.sleep(1000)
	helpers.performKeystrokeCombo({ "cmd", "shift" }, "F2")
	window.waitForDialog("High Pass")
	print("high pass dialog opened")
	-- helpers.sleep(2000)
	helpers.keystroke("return")
	window.waitForDialog(currentTabTitle)
	helpers.keystroke("b")
	hs.alert.show("Sharp Low texture done")
end

M.masking_skin = function()
	keyCombo(keys.cmd, ",")
	helpers.leftClick(2703.17578125, 285.80078125)
	helpers.sleep(500)
	helpers.leftClick(2491.1171875, 331.625)
	helpers.sleep(500)
	helpers.leftClick(2533.08203125, 392.67578125)
	helpers.sleep(500)
	helpers.leftClick(2591.48828125, 546.66796875)
	helpers.sleep(500)
	keyCombo(keys.cmd, ",")
	helpers.sleep(1000)
	-- helpers.performKeystrokeCombo({ "cmd" }, "F12")
	helpers.leftClick(2703.17578125, 285.80078125)
	helpers.sleep(500)
	helpers.performKeystrokeCombo(keys.cmd, "F6")
	helpers.sleep(2000)
	helpers.performKeystrokeCombo(keys.cmd, "F7")

	hs.alert.show("masking skin done")
	return true
end

M.orton = function()
	helpers.leftClick(2745, 444)
	helpers.sleep(500)
	helpers.leftClick(2891, 201)
	window.waitForDialog("Gaussian Blur")
	helpers.sleep(500)
	helpers.keystroke("4")
	helpers.sleep(1000)
	helpers.keystroke("8")
	helpers.sleep(500)
	helpers.keystroke("return")
	keyCombo(keys.cmdShift, "F3")
	hs.alert.show("orton done")
end

-- sharp low texture
local sharp = key(keys.cmd, "1", function()
	M.sharp_lowTexture()
end)

-- masking skin
local masking = key(keys.cmd, "2", function()
	M.masking_skin()
end)

-- add orton
local orton = key(keys.cmd, "3", function()
	M.orton()
end)

-- flatten layers
local flatten = key(keys.cmd, "4", function()
	helpers.performKeystrokeCombo(keys.cmdCtrlShift, "E")
end)
local oneFlow = key(keys.cmdCtrlAlt, "9", function()
	psFlow()
end)

local oneFlowFromMaskingSkinToOrton = key(keys.cmdCtrlAlt, "8", function()
	psFlowFromMaskingSkinToOrton()
end)

M.star4and3 = function()
	helpers.leftClick(185.16796875, 331.09765625)
	helpers.sleep(500)
	helpers.leftClick(185.16796875, 331.09765625)
	helpers.sleep(500)
	helpers.keystroke("0")
	helpers.sleep(500)
	helpers.keystroke("4")
	helpers.sleep(2000)
	helpers.leftClick(185.16796875, 331.09765625)
	helpers.keystroke("3")
	print("done")
end
-- assign 4 and 3 starts
local star = key(keys.cmd, "5", function()
	M.star4and3()
end)

-- disable at started
-- sharp:disable()
-- masking:disable()
-- orton:disable()
-- flatten:disable()

-- disable all key
key(keys.cmdCtrlAlt, "-", function()
	sharp:disable()
	masking:disable()
	orton:disable()
	flatten:disable()
	oneFlow.disable()
	oneFlowFromMaskingSkinToOrton.disable()
	star.disable()
end)

-- enable all key
key(keys.cmdCtrlAlt, "=", function()
	sharp:enable()
	masking:enable()
	orton:enable()
	flatten:enable()
	oneFlow:enable()
	oneFlowFromMaskingSkinToOrton.enable()
	star.enable()
end)

function psFlow()
	helpers.performKeystrokeCombo(keys.cmdShift, "E")
	helpers.sleep(5000)
	M.sharp_lowTexture()
	helpers.sleep(6000)
	M.orton()
	helpers.sleep(3000)
	helpers.performKeystrokeCombo(keys.cmdCtrlShift, "E")
	helpers.sleep(500)
	helpers.performKeystrokeCombo(keys.cmd, "S")
	helpers.sleep(100)
	helpers.performKeystrokeCombo(keys.cmd, "W")
	helpers.sleep(8000)
	M.star4and3()
	-- helpers.leftClick(185.16796875, 331.09765625)
	-- helpers.keystroke("4")
	-- helpers.sleep(2000)
	-- helpers.leftClick(185.16796875, 331.09765625)
	-- helpers.keystroke("3")
	-- print("done")
end

function psFlowFromMaskingSkinToOrton()
	M.masking_skin()
	helpers.sleep(1000)
	M.orton()
	helpers.sleep(1000)
	helpers.performKeystrokeCombo(keys.cmdCtrlShift, "E")
	helpers.sleep(500)
	helpers.performKeystrokeCombo(keys.cmd, "S")
	helpers.sleep(100)
	helpers.performKeystrokeCombo(keys.cmd, "W")
	helpers.sleep(8000)
	M.star4and3()
	print("done")
end

return M
