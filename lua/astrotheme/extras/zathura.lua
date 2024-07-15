local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
# ${_style_name} color theme for Zathura
# Swaps Foreground for Background to get a light version if the user prefers
#
# ${_style_name} color theme
#
set notification-error-bg "${ui.red}"
set notification-error-fg "${ui.base}"
set notification-warning-bg "${ui.orange}"
set notification-warning-fg "${ui.base}"
set notification-bg "${ui.base}"
set notification-fg "${syntax.text}"
set completion-bg "${ui.base}"
set completion-fg "${syntax.comment}"
set completion-group-bg "${ui.base}"
set completion-group-fg "${syntax.comment}"
set completion-highlight-bg "${ui.inactive_base}"
set completion-highlight-fg "${syntax.text}"
set index-bg "${ui.base}"
set index-fg "${syntax.text}"
set index-active-bg "${ui.inactive_base}"
set index-active-fg "${syntax.text}"
set inputbar-bg "${ui.base}"
set inputbar-fg "${syntax.text}"
set statusbar-bg "${ui.base}"
set statusbar-fg "${syntax.text}"
set highlight-color "${ui.yellow}"
set highlight-active-color "${ui.green}"
set default-bg "${ui.base}"
set default-fg "${syntax.text}"
set render-loading true
set render-loading-fg "${ui.base}"
set render-loading-bg "${syntax.text}"
#
# Recolor mode settings
# <C-r> to switch modes
#
set recolor-lightcolor "${ui.base}"
set recolor-darkcolor "${syntax.text}"
]],
    colors
  )
end

return M
