local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- top right status
local setTopRightStatus = require("topRightStatus")
setTopRightStatus(wezterm)

-- Spawn a fish shell in login mode
config.default_prog = { "/opt/homebrew/bin/fish", "-l" }

local SetKeyMaps = require("keymap")
SetKeyMaps(config, act)

-- font
config.font = wezterm.font_with_fallback({
	"MonaspiceNe Nerd Font",
	"MonaspiceRn Nerd Font",
	"MonaspiceKr Nerd Font",
	"MonaspiceXe Nerd Font",
	"MonaspaceAr Nerd Font",
	"JetBrains Mono",
	"Fira Code",
	"DengXian",
})
config.font_size = 20
config.font_rules = {
	-- Normal
	{
		italic = false,
		intensity = "Normal", -- Normal, Bold, Half
		font = wezterm.font({
			-- family = "Monaspace Neon",
			family = "MonaspiceNe Nerd Font",
			weight = "Light", -- "Thin" "ExtraLight" "Light" "DemiLight" "Book" "Regular" "Medium" "DemiBold" "Bold" "ExtraBold" "Black" "ExtraBlack"
		}),
	},
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font({
			family = "MonaspiceXe Nerd Font",
			weight = "Bold",
			style = "Italic",
		}),
	},
	{
		italic = true,
		intensity = "Half",
		font = wezterm.font({
			family = "MonaspiceXe Nerd Font",
			weight = "DemiBold",
			style = "Italic",
		}),
	},
	{
		italic = true,
		intensity = "Normal",
		font = wezterm.font({
			family = "MonaspiceRn Nerd Font",
			style = "Italic",
		}),
	},
	{
		italic = false,
		intensity = "Half",
		font = wezterm.font({
			family = "MonaspiceAr Nerd Font",
		}),
	},
	{
		italic = false,
		intensity = "Bold",
		font = wezterm.font({
			family = "MonaspiceKr Nerd Font",
			style = "Italic",
			weight = "Bold",
			-- stretch = "Expanded",
		}),
	},
}
-- color scheme and background
local setColorSchemeAndBackground = require("backgroundAndColorScheme")
setColorSchemeAndBackground(config, wezterm)

-- close confirmation
config.window_close_confirmation = "NeverPrompt" -- 'AlwaysPrompt', NeverPrompt

config.show_update_window = true

-- window
-- -- hide title bar but keep resizable
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.max_fps = 120

return config
