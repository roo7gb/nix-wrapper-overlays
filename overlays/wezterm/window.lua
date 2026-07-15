-- nix-wrapper-overlays/overlays/wezterm/window.lua

local module = {}

function module.window_config(config)
  config.window_background_opacity = 1.0
end

return module

