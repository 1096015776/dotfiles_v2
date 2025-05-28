local w = require("wezterm")
local config = {}
if w.config_builder then
	config = w.config_builder()
end

config.window_background_opacity = 0.9
config.macos_window_background_blur = 25
config.window_padding = {
	left = 5,
	right = 5,
	top = 10,
	bottom = 10,
}

config.mouse_bindings = {
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "SHIFT",
		action = w.action.OpenLinkAtMouseCursor,
	},
}

config.color_scheme = "nord"
config.font = w.font("VictorMono Nerd Font Mono")
config.font_size = 14
config.line_height = 1.2
config.strikethrough_position = "0.5cell"
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.max_fps = 120
config.scrollback_lines = 10000
config.adjust_window_size_when_changing_font_size = false
return config
