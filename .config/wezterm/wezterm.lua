local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

wezterm.on("update-right-status", function(window, pane)
	-- "Wed Mar 3 08:14"
	local date = wezterm.strftime("%A %-d %B %Y %H:%M ")

	local bat = ""
	for _, b in ipairs(wezterm.battery_info()) do
		bat = "🔋 " .. string.format("%.0f%%", b.state_of_charge * 100)
		if tostring(b.state_of_charge) == "nan" then
			bat = ""
		end
	end

	window:set_right_status(wezterm.format({
		{ Text = bat .. "   " .. date },
	}))
end)

-- Spawn a fish shell in login mode
config.default_prog = { "/opt/homebrew/bin/fish", "-l" }

config.keys = {
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
}

-- font
config.font_size = 20

-- color scheme
-- "Catppuccin Mocha", -- or Macchiato, Frappe, Latte
local color_scheme = "Tokyo Night Moon"
config.color_scheme = color_scheme
local buildin_color_scheme = wezterm.color.get_builtin_schemes()[color_scheme]

-- background
-- config.window_background_opacity = 1
config.window_background_gradient = {
	-- colors = { buildin_color_scheme.background },
	colors = { "Black" },
	-- preset = "Black",
	-- orientation = {
	-- 	Radial = {
	-- 		cx = 0.5,
	-- 		cy = 0.5,
	-- 		radius = 1.25,
	-- 	},
	-- },
}
config.background = {
	-- {
	-- 	source = { File = "/Users/atiwatseenark/aum.png" },
	-- 	opacity = 0.6,
	-- },
	{
		source = { File = wezterm.config_dir .. "/sunset.gif" },
		horizontal_align = "Center",
		vertical_align = "Middle",
		-- vertical_offset = "10cell",
		-- horizontal_offset = "Center",
		height = "Cover", -- Cover, Contain
		width = "Cover",
		hsb = {
			hue = 1.0,
			saturation = 1.0,
			brightness = 1.0,
		},
		repeat_x = "NoRepeat",
		repeat_y = "NoRepeat",
		opacity = 0.2,
	},
}

-- close confirmation
config.window_close_confirmation = "NeverPrompt" -- 'AlwaysPrompt', NeverPrompt

config.show_update_window = true

return config
