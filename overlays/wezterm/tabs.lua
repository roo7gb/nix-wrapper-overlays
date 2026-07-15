-- nix-wrapper-overlays/overlays/wezterm/tabs.lua

local module = {}

function module.tab_config(config)
  config.hide_tab_bar_if_only_one_tab = true
end

return module

