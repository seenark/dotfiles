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
config.font_size = 20

-- color scheme and background
local setColorSchemeAndBackground = require("backgroundAndColorScheme")
setColorSchemeAndBackground(config, wezterm)

-- close confirmation
config.window_close_confirmation = "NeverPrompt" -- 'AlwaysPrompt', NeverPrompt

config.show_update_window = true

-- window
-- -- hide title bar but keep resizable
config.window_decorations = "RESIZE"

return config
