local helpers = require("helpers")
local M = {}

M.focusApplication = function(name)
	local app = hs.application.get(name)
	if app then
		app:activate()
	end
end

M.waitForDialog = function(dialogTitle)
	print("waiting for dialog" .. dialogTitle)
	local dialogOpen = false

	-- Function to check if dialog is open
	local checkDialog = function()
		-- Perform checks to determine if the dialog is open
		-- Modify the conditions below based on the specific dialog behavior

		-- Example condition: Check if a specific window title is present
		local dialogWindowTitle = dialogTitle
		local window = hs.window.focusedWindow()
		if window and window:title() == dialogWindowTitle then
			print("window title = " .. window:title())
			print(dialogTitle == window:title())
			dialogOpen = true
			return true -- Stop the timer
		end

		return false
	end

	-- Start timer to periodically check for dialog
	local timer = hs.timer.new(0.1, checkDialog)
	timer:start()

	-- Function to stop the timer after a specified time (timeout)
	local timeout = 10 -- Adjust as needed
	hs.timer.doAfter(timeout, function()
		timer:stop()
		if not dialogOpen then
			-- Handle timeout scenario (dialog did not open within the specified time)
			print("Dialog did not open within the timeout period.")
		end
	end)
end

M.getActiveWindowTitle = function()
	local activeWindow = hs.window.focusedWindow()
	if activeWindow then
		local title = activeWindow:title()
		print("window title is:" .. title)
		return title
	end
	return nil
end

function compareColors(color1, color2)
	return color1.red == color2.red
		and color1.green == color2.green
		and color1.blue == color2.blue
		and color1.alpha == color2.alpha
end

M.waitingColorAt_X_Y = function(mousePos, desiredColor, timeoutMillis)
	local currentMousePos = helpers.getMousePosition()
	-- move mouse to the position that want to get pixel color
	helpers.moveMouseTo(mousePos.x, mousePos.y)

	local screen = hs.screen.mainScreen()
	local endTime = hs.timer.absoluteTime() + (timeoutMillis * 1000000)
	while hs.timer.absoluteTime() < endTime do
		-- Capture the screen snapshot
		local snapshot = screen:snapshot()

		-- Get the color at the pixel
		-- local color = snapshot:colorAt({ x = mousePos.x - screen:frame().x, y = mousePos.y - screen:frame().y })
		local color = helpers.getPixelColorAtMouse()
		print("color1")
		print(color)
		print("color2")
		print(hs.inspect(desiredColor))
		local result = compareColors(color, hs.inspect(desiredColor))
		print(result)
		if result then
			-- move mouse back
			helpers.moveMouseTo(currentMousePos.x, currentMousePos.y)
			print("found color")
			return color
		end

		-- Delay before capturing the next snapshot
		hs.timer.usleep(500000) -- 500 milliseconds
	end
	-- move mouse back
	helpers.moveMouseTo(currentMousePos.x, currentMousePos.y)
	print("time out")
	return nil
end

M.waitForColor = function(mousePos, desiredColor, timeoutMillis)
	local endTime = hs.timer.absoluteTime() + (timeoutMillis * 1000000)

	while hs.timer.absoluteTime() < endTime do
		local color = helpers.getPixelColorAtMouse()
		local result = compareColors(color, hs.inspect(desiredColor))
		if result then
			print("--------- found color in pixel")
			return color
		end
		-- Delay before checking the color again
		hs.timer.usleep(500000) -- 500 milliseconds
	end

	print("------ NOT found color in pixel")
	return nil
end

return M
