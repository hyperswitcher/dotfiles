local wezterm = require 'wezterm'
return {
	-- color_scheme = 'termnial.sexy',
	color_scheme = 'Catppuccin Mocha',
    colors = {
        background = 'black'
    },
	enable_tab_bar = false,
	font_size = 18.0,
	font = wezterm.font('VictorMono Nerd Font Mono'),
	-- macos_window_background_blur = 40,
	macos_window_background_blur = 200,

	-- window_background_image = '/Users/omerhamerman/Downloads/3840x1080-Wallpaper-041.jpg',
	-- window_background_image_hsb = {
	-- 	brightness = 0.01,
	-- 	hue = 1.0,
	-- 	saturation = 0.5,
	-- },
	-- window_background_opacity = 0.92,
	-- window_background_opacity = 1.0,
	window_background_opacity = 0.8,
	-- window_background_opacity = 0.20,
	window_decorations = 'RESIZE',
	-- keys = {
	-- 	{
	-- 		key = 'f',
	-- 		mods = 'CTRL',
	-- 		action = wezterm.action.ToggleFullScreen,
	-- 	},
	-- },
	mouse_bindings = {
	  -- Ctrl-click will open the link under the mouse cursor
	  {
	    event = { Up = { streak = 1, button = 'Left' } },
	    mods = 'CTRL',
	    action = wezterm.action.OpenLinkAtMouseCursor,
	  },
	},
    window_padding = {
      left = 100,
      right = 100,
      top = 100,
      bottom = 100,
    }
}
