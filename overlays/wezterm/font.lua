-- nix-wrapper-overlays/overlays/wezterm/font.lua

local wezterm = require 'wezterm'
local module = {}

-- set font and size
function module.set_font(config)
  config.font = wezterm.font 'Agave Nerd Font'
  config.font_size = 12.0
end

return module

