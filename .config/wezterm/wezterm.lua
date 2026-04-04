-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

-- Linux uses your default shell by default, so we'll remove the powershell entry.
-- If you want to force a specific one, you can use: config.default_prog = { 'bash' }

config.window_padding = {
    left = 20,
    right = 20,
    top = 20,
    bottom = 20,
}
config.window_close_confirmation = 'NeverPrompt'
-- Visuals -- 
config.max_fps = 144
config.window_decorations = "NONE"
config.window_background_opacity = 0.7
config.show_tab_index_in_tab_bar = false
config.initial_cols = 120
config.initial_rows = 28
config.font = wezterm.font "JetBrains Mono"
config.font_size = 12
config.colors = require("colors")
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_max_width = 22
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = 'SteadyBlock'


-- Tab title formatting -- 
wezterm.on("format-tab-title", function(tab)
  local index = tab.tab_index + 1
  local name = tab.active_pane.title
  return " " .. index .. ": " .. name .. "  "
end)
    
-- Key Configs
config.key_map_preference = "Physical"
config.keys = {
    { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
    { key = 'V', mods = 'CTRL', action = act.PasteFrom 'PrimarySelection' },
}

return config
