local M = {}

M.reloadConfig = function()
	function reloadConfig(files)
		doReload = false
		for _, file in pairs(files) do
			if file:sub(-4) == ".lua" then
				doReload = true
			end
		end
		if doReload then
			hs.reload()
		end
	end
	myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
	hs.alert.show("Config loaded")
end

M.notification = function(title, text)
	hs.notify.new({ title = title, informativeText = text }):send()
end

M.bindHotKey = function(modKey, key, func)
	local hotkey = hs.hotkey.bind(modKey, key, func)
	return hotkey
end

-- Move the mouse to specific coordinates
M.moveMouseTo = function(x, y)
	local mousepoint = hs.geometry.point(x, y)
	hs.mouse.absolutePosition(mousepoint)
end

-- Perform a left mouse click
M.leftClick = function(x, y)
	local mouseEvent = hs.eventtap.event.newMouseEvent(hs.eventtap.event.types.leftMouseDown, hs.geometry.point(x, y))
	mouseEvent:post()

	mouseEvent:setType(hs.eventtap.event.types.leftMouseUp)
	mouseEvent:post()
end

-- Get the position of a pixel
M.getMousePosition = function()
	local mousePos = hs.mouse.absolutePosition()
	-- local screenshot = hs.screen.mainScreen():snapshot()
	-- local color = screenshot:colorAt(mousePos.x, mousePos.y)

	-- Print the RGB color values and mouse coordinates
	-- print("Pixel color: R=" .. color.red .. ", G=" .. color.green .. ", B=" .. color.blue)
	print("Mouse position: X=" .. mousePos.x .. ", Y=" .. mousePos.y)
	return mousePos
end

M.keydown = function(modifiers, key)
	local keyEventDown = hs.eventtap.event.newKeyEvent(modifiers, key, true) -- Key press event
	keyEventDown:post()
	return keyEventDown
end

M.keyup = function(modifiers, key)
	local keyEventUp = hs.eventtap.event.newKeyEvent(modifiers, key, false) -- Key press event
	keyEventUp:post()
	return keyEventUp
end

M.keystroke = function(key)
	local keyEventDown = hs.eventtap.event.newKeyEvent({}, key, true) -- Key press event

	keyEventDown:post()

	hs.timer.usleep(100) -- Delay between key press and release (adjust as needed)

	local keyEventUp = hs.eventtap.event.newKeyEvent({}, key, false) -- Key press event
	keyEventUp:post()
end

M.performKeystrokeCombo = function(modifiers, keys)
	print("perform key combo")
	local keyEventDown = hs.eventtap.event.newKeyEvent(modifiers, keys, true) -- Key press event
	keyEventDown:post()

	hs.timer.usleep(100) -- Delay between key press and release (adjust as needed)

	local keyEventUp = hs.eventtap.event.newKeyEvent(modifiers, keys, false) -- Key release event
	keyEventUp:post()
end

M.getPixelColorAtMouse = function()
	local mousePos = hs.mouse.absolutePosition()

	local screen = hs.screen
	local mainScreen = screen.mainScreen()
	local snapshot = mainScreen:snapshot()
	local colorResult = snapshot:colorAt({ mousePos })
	local color = hs.inspect(colorResult)
	print("color at current mouse position:", color)
	return color
end

M.getPixelColorAtXY = function(x, y)
	local screen = hs.screen
	local mainScreen = screen.mainScreen()
	local snapshot = mainScreen:snapshot()
	local colorResult = snapshot:colorAt({ x = x, y = y })
	local color = hs.inspect(colorResult)
	print("color at:" .. " x:" .. x .. " y:" .. y .. color)
	return color
end

M.sleep = function(milliseconds)
	local microseconds = milliseconds * 1000
	hs.timer.usleep(microseconds)
end

M.loop = function(func)
	local button, text = hs.dialog.textPrompt("Loop Number", "Enter the loop number:", "", "OK", "Cancel")

	-- Check if the user clicked "OK" and entered a valid number
	if button == "OK" and tonumber(text) then
		local loopNumber = tonumber(text)
		print("Loop Number:", loopNumber)

		-- Perform your desired actions using the loopNumber value
		-- ...
		for i = 1, loopNumber do
			print("start loop:" .. i)
			func()
			print("end loop:" .. i)
		end
	end
end

return M
