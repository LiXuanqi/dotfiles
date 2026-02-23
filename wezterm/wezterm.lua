local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Color scheme and typography
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"Menlo",
	"Noto Color Emoji",
})
config.font_size = 13.0
config.line_height = 1.1

-- Window and tab appearance
config.window_padding = {
	left = 8,
	right = 8,
	top = 8,
	bottom = 8,
}
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 32

-- Performance + UX
config.front_end = "WebGpu"
config.max_fps = 120
config.scrollback_lines = 10000
config.enable_scroll_bar = false
config.audible_bell = "Disabled"
config.window_decorations = "TITLE | RESIZE"

-- tmux-like keybindings
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	{ key = "c", mods = "LEADER", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
	{ key = "x", mods = "LEADER", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
	{ key = "n", mods = "LEADER", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "p", mods = "LEADER", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "1", mods = "LEADER", action = wezterm.action.ActivateTab(0) },
	{ key = "2", mods = "LEADER", action = wezterm.action.ActivateTab(1) },
	{ key = "3", mods = "LEADER", action = wezterm.action.ActivateTab(2) },
	{ key = "|", mods = "LEADER|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "-", mods = "LEADER", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "h", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "j", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "k", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "l", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Right") },
}

-- macOS option key behavior (adjust if needed)
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = false

return config
