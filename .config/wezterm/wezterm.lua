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
-- config.default_prog = { "/opt/homebrew/bin/fish", "-l" }
config.default_prog = { "/Users/atiwatseenark/.nix-profile/bin/fish", "-l" }

local SetKeyMaps = require("keymap")
SetKeyMaps(config, act)

-- font
config.font = wezterm.font_with_fallback({
	"Monaspace Neon Var",
	"Monaspace Argon Var",
	"Monaspace Krypton Var",
	"Monaspace Xenon Var",
	"JetBrains Mono",
	"Fira Code",
	"DengXian",
})
config.font_size = 20
config.font_rules = {
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font({
			family = "Monaspace Xenon Var",
			weight = "Bold",
			style = "Italic",
		}),
	},
	{
		italic = true,
		intensity = "Half",
		font = wezterm.font({
			family = "Monaspace Xenon Var",
			weight = "DemiBold",
			style = "Italic",
		}),
	},
	{
		italic = true,
		intensity = "Normal",
		font = wezterm.font({
			family = "Monaspace Radon Var",
			style = "Italic",
		}),
	},
	{
		italic = false,
		intensity = "Bold",
		font = wezterm.font({
			family = "Monaspace Krypton Var",
			style = "Italic",
			weight = "Black",
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

return config
