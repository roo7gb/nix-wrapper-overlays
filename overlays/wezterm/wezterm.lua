-- nix-wrapper-overlays/overlays/wezterm/wezterm.lua

local wezterm = require 'wezterm'
local config = wezterm.config_builder and wezterm.config_builder() or {}

-- modules
local fonts = require 'font'
local tabs = require 'tabs'
local window = require 'window'
local colors = require 'colors'

-- font config
fonts.set_font(config)

-- tabs
tabs.tab_config(config)

-- window
window.window_config(config)

-- colors
colors.set_colors(config)

return config

