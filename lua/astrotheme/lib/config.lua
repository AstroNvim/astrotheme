---AstroTheme Configuration
---
---Default configuration of AstroTheme
---
---This module can be loaded with `local astrotheme_config = require "astrotheme.lib.config"`
---
---copyright 2023 license GNU General Public License v3.0 @class astrocore
---@class astrotheme.lib.config
M = {}

---@type AstroThemeOpts
M.default = {
  palette = "astrodark",
  termguicolors = true,
  terminal_colors = true,
  dev = false,
  style = {
    transparent = false,
    inactive = true,
    float = true,
    neotree = true,
    border = true,
    title_invert = false,
    italic_comments = true,
    simple_syntax_colors = false,
  },
  background = {
    light = "astrolight",
    dark = "astrodark",
  },
  palettes = {
    global = {},
    astrodark = {},
    astrolight = {},
    astromars = {},
    astromars_light = {},
  },
  highlights = {
    global = {},
    astrodark = {},
    astrolight = {},
    astromars = {},
    astromars_light = {},
  },
  plugin_default = "auto",
  plugins = {},
}

---@param opts AstroThemeOpts
---@return AstroThemeOpts
function M.user_config(opts)
  local new_config = vim.tbl_deep_extend("force", M.default, opts or {})
  ---@cast new_config AstroThemeOpts
  return new_config
end

return M
