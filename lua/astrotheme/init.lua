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

--- Load a specific theme given a palette name
---@param theme string?
function M.load(theme)
  if
    not theme
    or (
      theme == M.config.palette
      and vim.o.background ~= (M.config.palette == M.config.background["light"] and "light" or "dark")
    )
  then
    theme = M.config.background[vim.o.background]
  end
  M.config.palette = theme
  util.reload(M.config, theme)

  local colors = util.set_palettes(M.config)

  local highlights = util.get_highlights(colors, M.config)

  util.set_highlights(highlights)

  if M.config.terminal_colors then util.set_terminal_colors(colors) end
end

--- Set up AstroTheme with provided user configured options
---@param opts AstroThemeOpts
function M.setup(opts)
  M.config = require("astrotheme.lib.config").user_config(opts)
  M.config.plugins = util.get_plugin_list(M.config)

  if opts.dev then util.live_reloading() end
end

return M
