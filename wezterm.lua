-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Window size
config.initial_cols = 120
config.initial_rows = 28

-- Font (JetBrains Mono ships bundled with WezTerm, no install needed)
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 16

-- Theme
config.color_scheme = 'Cyberpunk'

-- Transparency
config.window_background_opacity = 0.40   -- 0.0 = invisible, 1.0 = solid
config.text_background_opacity = 1.0      -- keeps text readable

-- Optional background blur (use the one for your OS)
config.macos_window_background_blur = 20  -- macOS
-- config.win32_system_backdrop = 'Acrylic' -- Windows 11

-- Title bar
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

-- Tab bar behaviour
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false  -- keep false so the window buttons stay visible
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = false

-- Tab bar colours (cyberpunk neon)
config.colors = {
  tab_bar = {
    background = '#0d0221',
    active_tab = {
      bg_color = '#ff2a6d',
      fg_color = '#0d0221',
      intensity = 'Bold',
    },
    inactive_tab = {
      bg_color = '#1a1033',
      fg_color = '#05d9e8',
    },
    inactive_tab_hover = {
      bg_color = '#2a1a4d',
      fg_color = '#ffffff',
    },
    new_tab = {
      bg_color = '#0d0221',
      fg_color = '#05d9e8',
    },
  },
}

-- Finally, return the configuration to wezterm:
return config