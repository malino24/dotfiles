local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.default_prog = { "fish" }

config.color_scheme = "Material Darker (base16)"
-- config.color_scheme = "Catppuccin Mocha"

config.font = wezterm.font("JetBrains Mono Nerd Font")
config.font_size = 20

return config
