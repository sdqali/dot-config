local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = "Dracula (Official)"
config.use_fancy_tab_bar = true
config.default_prog = { "/usr/bin/bash" }

config.keys = {
	{
		key = "Backspace",
		mods = "CTRL",
		action = act.SendKey({
			key = "w",
			mods = "CTRL",
		}),
	},
}
for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CTRL",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return config
