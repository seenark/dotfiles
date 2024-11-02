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

-- this is good example but have no time to follow
-- local function keyCode(modifiers, key)
--   return function() hs.eventtap.keyStroke(modifiers, key, 0) end
-- end
--
-- -- Create a modal hotkey object with an absurd triggering hotkey,
-- -- since it will never be triggered from the keyboard
-- hotkeys = hs.hotkey.modal.new({"cmd", "shift", "alt"}, "F19")
-- -- Bind all your normal hotkeys to the modal state object
-- hotkeys:bind({'ctrl'}, ',', keyCode({'alt'}, 'left'))
-- hotkeys:bind({'ctrl'}, '.', keyCode({'alt'}, 'down'))
-- hotkeys:bind({'ctrl'}, "'", keyCode({'alt'}, 'forwarddelete'))
-- hotkeys:bind({'ctrl'}, ';', keyCode({'alt'}, 'delete'))
-- hotkeys:bind({'ctrl'}, 'u', keyCode({'cmd'}, 'delete'))
--
-- -- Define a callback function to be called when application events happen
-- function applicationWatcherCallback(appName, eventType, appObject)
--   if (appName == "Emacs") then
--     if (eventType == hs.application.watcher.activated) then
--       -- Emacs just got focus, disable our hotkeys
--       hotkeys:exit()
--     elseif (eventType == hs.application.watcher.deactivated) then
--       -- Emacs just lost focus, enable our hotkeys
--       hotkeys:enter()
--     end
--   end
-- end
--
-- -- Create and start the application event watcher
-- watcher = hs.application.watcher.new(applicationWatcherCallback)
-- watcher:start()
--
-- -- Activate the modal state
-- hotkeys:enter()

return M
