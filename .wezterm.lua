local wezterm = require 'wezterm'

local config = {}
  
if wezterm.config_builder then
  config = wezterm.config_builder()
end

----- Begin custom config -----
-- config.font = wezterm.font("MonaspiceNe Nerd Font Mono", { weight = "Light" })
-- config.cell_width = 0.9
-- config.font_size = 15
-- config.line_height = 1.1

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15
config.line_height = 1.0

-- Disable ligatures
config.harfbuzz_features = {"calt = 0", "clig = 0", "liga = 0"}

config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.window_padding = {
    left = "0.5cell",
    right = 0,
    top = "0.1cell",
    bottom = 0,
}

config.front_end = "WebGpu"

config.color_scheme = "Mathias"

config.colors = {
    foreground = "#FFFFFF",
    background = "#000000",
    tab_bar = {
        background = "#000000",
        active_tab = {
            bg_color = "#000000",
            fg_color = "#FFFFFF",
        },
        inactive_tab = {
            bg_color = "#000000",
            fg_color = "#666666",
        },
        new_tab = {
            bg_color = "#000000",
            fg_color = "#666666",
        },
    }
}

config.keys = {
    {
        key = "p",
        mods = "CMD",
        action = wezterm.action.ActivateCommandPalette,
    },
    {
        key = "m",
        mods = "CMD",
        action = wezterm.action.DisableDefaultAssignment,
    },
}

return config
