return function(config, wezterm)
	-- color scheme
	-- "Catppuccin Mocha", -- or Macchiato, Frappe, Latte
	local color_scheme = "Tokyo Night Moon"
	config.color_scheme = color_scheme
	local buildin_color_scheme = wezterm.color.get_builtin_schemes()[color_scheme]

	-- background
	config.window_background_opacity = 0.80
	config.macos_window_background_blur = 0
	config.window_background_gradient = {
		-- colors = { buildin_color_scheme.background },
		colors = { "#161616ff" },
		-- preset = "Black",
		-- orientation = {
		-- 	Radial = {
		-- 		cx = 0.0,
		-- 		cy = 0.0,
		-- 		radius = 1.50,
		-- 	},
		-- },
	}
	config.background = {
		-- {
		-- 	source = { File = "/Users/atiwatseenark/aum.png" },
		-- 	opacity = 0.6,
		-- },
		--------- add background image ----------
		-- {
		-- 	source = { File = wezterm.config_dir .. "/gifs/sunset.gif" },
		-- 	horizontal_align = "Center",
		-- 	vertical_align = "Middle",
		-- 	vertical_offset = "2cell",
		-- 	-- horizontal_offset = "Center",
		-- 	height = "Cover", -- Cover, Contain
		-- 	width = "Cover",
		-- 	hsb = {
		-- 		hue = 1.0,
		-- 		saturation = 1.0,
		-- 		brightness = 3.0,
		-- 	},
		-- 	repeat_x = "NoRepeat",
		-- 	repeat_y = "NoRepeat",
		-- 	opacity = 0.2,
		-- },
	}
end
