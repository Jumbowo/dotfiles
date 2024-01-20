local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15
config.line_height = 1.0

-- Disable ligatures
config.harfbuzz_features = { "calt = 1", "clig = 0", "liga = 0" }

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

config.debug_key_events = false

local act = wezterm.action

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

  -- Tabs suck
  {
    key = "t",
    mods = "CMD",
    action = wezterm.action.DisableDefaultAssignment,
  },

  -- Nice tmux binds
  { key = "1", mods = "CMD", action = act.Multiple { act.SendKey { key = "a", mods = "CTRL", }, act.SendKey { key = "1" }}},
  { key = "2", mods = "CMD", action = act.Multiple { act.SendKey { key = "a", mods = "CTRL", }, act.SendKey { key = "2" }}},
  { key = "3", mods = "CMD", action = act.Multiple { act.SendKey { key = "a", mods = "CTRL", }, act.SendKey { key = "3" }}},
  { key = "4", mods = "CMD", action = act.Multiple { act.SendKey { key = "a", mods = "CTRL", }, act.SendKey { key = "4" }}},
  { key = "5", mods = "CMD", action = act.Multiple { act.SendKey { key = "a", mods = "CTRL", }, act.SendKey { key = "5" }}},
  { key = "6", mods = "CMD", action = act.Multiple { act.SendKey { key = "a", mods = "CTRL", }, act.SendKey { key = "6" }}},
  { key = "7", mods = "CMD", action = act.Multiple { act.SendKey { key = "a", mods = "CTRL", }, act.SendKey { key = "7" }}},
  { key = "8", mods = "CMD", action = act.Multiple { act.SendKey { key = "a", mods = "CTRL", }, act.SendKey { key = "8" }}},
  { key = "9", mods = "CMD", action = act.Multiple { act.SendKey { key = "a", mods = "CTRL", }, act.SendKey { key = "9" }}},
}

return config
