local wezterm = require("wezterm")

local mux = wezterm.mux
local act = wezterm.action

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	-- window:gui_window():maximize()
end)

return {
	-- color_scheme = "Hardcore",
	-- color_scheme = "Hopscotch.256",
	-- color_scheme = "FirefoxDev",
	-- color_scheme = "Afterglow",
	font = wezterm.font("Hack Nerd Font"),
	-- font = wezterm.font("JetBrains Mono Nerd Font"),
	font_size = 12,
	line_height = 1,
	use_dead_keys = false,
	scrollback_lines = 5000,
	adjust_window_size_when_changing_font_size = false,
	hide_tab_bar_if_only_one_tab = true,
	disable_default_key_bindings = true,
	-- window_background_opacity = 0.98,
	-- text_background_opacity = 0.5,
	window_background_image = "/home/deck/.config/wezterm/desert_night.jpg",
	window_background_image_hsb = {
		brightness = 0.025,
	},
	window_padding = {
		left = 1,
		right = 1,
		top = 0,
		bottom = 0,
	},
	keys = {
		{
			key = "F11",
			action = wezterm.action.ToggleFullScreen,
		},
	},
}
