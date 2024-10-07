-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.enable_scroll_bar = true

config.window_background_image_hsb = {
	brightness = 0.15,
	hue = 1.0,
}
config.text_background_opacity = 0.8

-- Font
config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"Monospace",
})
config.font_size = 15.0

-- and finally, return the configuration to wezterm
return config
