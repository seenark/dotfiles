function SetKeyMaps(config, act)
	config.native_macos_fullscreen_mode = true
	config.keys = {
		{
			key = "n",
			mods = "SHIFT|CTRL",
			action = act.ToggleFullScreen,
		},
		{
			key = "/",
			mods = "CMD",
			action = act.SendKey({ key = "÷" }),
		},
		{
			key = "s",
			mods = "CMD",
			action = act.SendKey({ key = "s", mods = "CTRL" }),
			-- \x00
		},
		{
			key = "Space",
			mods = "SHIFT",
			action = act.SendKey({ key = "Space", mods = "CTRL" }),
		},
		{
			key = "Backspace",
			mods = "CTRL",
			action = act.SendString(" un"),
		},
		-- codeium mapping to nvim
		-- {
		-- 	key = "a",
		-- 	mods = "CTRL",
		-- 	action = act.SendKey({ key = "æ", mods = "SHIFT" }), -- if don't specify SHIFT it's not working
		-- },
		-- {
		-- 	key = "a",
		-- 	mods = "CTRL|SHIFT",
		-- 	action = act.SendKey({ key = "Æ", mods = "SHIFT" }), -- if don't specify SHIFT it's not working
		-- },
		-- {
		-- 	key = "s",
		-- 	mods = "CTRL",
		-- 	action = act.SendKey({ key = "…", mods = "SHIFT" }), -- if don't specify SHIFT it's not working
		-- },
		-- {
		-- 	key = "s",
		-- 	mods = "CTRL|SHIFT",
		-- 	action = act.SendKey({ key = "Ú", mods = "CTRL|SHIFT" }), -- if don't specify SHIFT it's not working
		-- },
		---------- wezterm walk around ----------
		{
			key = "h",
			action = act.ActivatePaneDirection("Left"),
			mods = "ALT",
		},
		{
			key = "l",
			action = act.ActivatePaneDirection("Right"),
			mods = "ALT",
		},
		{
			key = "k",
			action = act.ActivatePaneDirection("Up"),
			mods = "ALT",
		},
		{
			key = "j",
			action = act.ActivatePaneDirection("Down"),
			mods = "ALT",
		},
		{
			key = "_",
			mods = "CTRL|SHIFT",
			-- action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
			action = act.SplitPane({ direction = "Down", size = { Percent = 30 } }),
		},
		-- {
		-- 	key = "|",
		-- 	mods = "CTRL|SHIFT",
		-- 	action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		-- },
		{
			key = "|",
			mods = "CTRL|SHIFT",
			action = act.SplitPane({ direction = "Right", size = { Percent = 30 } }),
		},
		{
			key = "w",
			mods = "SHIFT|CTRL",
			action = act.CloseCurrentPane({ confirm = true }),
		},
		-- Switch to the default workspace
		{
			key = "y",
			mods = "CTRL|SHIFT",
			action = act.SwitchToWorkspace({
				name = "default",
			}),
		},
		-- Switch to a monitoring workspace, which will have `top` launched into it
		{
			key = "u",
			mods = "CTRL|SHIFT",
			action = act.SwitchToWorkspace({
				name = "monitoring",
				spawn = {
					args = { "/opt/homebrew/bin/btm" },
				},
			}),
		},
		-- Create a new workspace with a random name and switch to it
		{ key = "i", mods = "CTRL|SHIFT", action = act.SwitchToWorkspace },
		-- Show the launcher in fuzzy selection mode and have it list all workspaces
		-- and allow activating one.
		{
			key = "9",
			mods = "ALT",
			action = act.ShowLauncherArgs({
				flags = "FUZZY|WORKSPACES",
			}),
		},
		{ key = "l", mods = "SHIFT|ALT", action = act.ShowLauncher },
		-- activate pane selection mode with the default alphabet (labels are "a", "s", "d", "f" and so on)
		-- { key = "8", mods = "CTRL", action = act.PaneSelect },
		-- activate pane selection mode with numeric labels
		{
			key = "9",
			mods = "CTRL",
			action = act.PaneSelect({
				alphabet = "1234567890",
			}),
		},
		-- show the pane selection mode, but have it swap the active and selected panes
		{
			key = "0",
			mods = "CTRL",
			action = act.PaneSelect({
				mode = "SwapWithActive",
			}),
		},
	}
end

return SetKeyMaps
