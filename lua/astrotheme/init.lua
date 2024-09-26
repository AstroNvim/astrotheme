---AstroTheme
---
--- The default colorscheme used by AstroNvim an aesthetically pleasing and
--- feature-rich neovim config that is extensible and easy to use with a great
--- set of plugins
---
---This module can be loaded with `local astrotheme = require "astrotheme"`
---
---copyright 2023 license GNU General Public License v3.0 @class astrocore
---@class astrotheme
---@field config AstroThemeOpts
local M = { config = {} }

local util = require "astrotheme.lib.util"

local style_background = {
  astrodark = "dark",
  astrolight = "light",
  astromars = "dark",
  astrojupiter = "light",
}

local invert_style = {
  astrodark = "astrolight",
  astrolight = "astrodark",
  astromars = "astrojupiter",
  astrojupiter = "astromars",
}

--- Load a specific theme given a palette name
---@param theme? string
function M.load(theme)
  if not theme then
    theme = M.config.background[vim.o.background]
  elseif theme == M.config.palette then
    if vim.o.background ~= style_background[theme] then theme = invert_style[theme] end
  else
    vim.o.background = style_background[theme]
  end
  M.config.palette = theme
  util.reload(M.config)

  local colors = util.set_palettes(M.config)

  local highlights = util.get_highlights(colors, M.config)

  util.set_highlights(highlights)

  if M.config.terminal_colors then util.set_terminal_colors(colors) end
end

--- Set up AstroTheme with provided user configured options
---@param opts AstroThemeOpts
function M.setup(opts) M.config = require("astrotheme.lib.config").user_config(opts) end

return M
