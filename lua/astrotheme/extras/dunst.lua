local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
# ${_style_name} colors for dunst
# For more configuration options see https://github.com/dunst-project/dunst/blob/master/dunstrc

[urgency_low]
    background = "${ui.inactive_base}"
    foreground = "${syntax.text}"
    frame_color = "${ui.border}"

[urgency_normal]
    background = "${ui.base}"
    foreground = "${syntax.text}"
    frame_color = "${ui.border}"

[urgency_critical]
    background = "${ui.highlight}"
    foreground = "${syntax.red}"
    frame_color = "${syntax.red}"
]],
    colors
  )
end

return M
