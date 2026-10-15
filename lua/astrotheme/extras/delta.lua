local util = require "astrotheme.extras"
local Color = require "astrotheme.lib.color"

local M = {}

local function blend(src, dst, amount) return Color.new(src):blend(Color.new(dst), amount):tohex() end

--- @param colors AstroThemePalette
function M.generate(colors)
  local diff = {
    green = blend(colors.syntax.green, colors.ui.base, 0.75),
    red = blend(colors.syntax.red, colors.ui.base, 0.75),
  }
  local delta = {
    green = blend(diff.green, colors.ui.base, 0.45),
    red = blend(diff.red, colors.ui.base, 0.45),
  }
  return util.template(
    [[
[delta]
  minus-style                   = syntax "${diff.red}"
  minus-non-emph-style          = syntax "${diff.red}"
  minus-emph-style              = syntax "${delta.red}"
  minus-empty-line-marker-style = syntax "${diff.red}"
  line-numbers-minus-style      = "${syntax.red}"
  plus-style                    = syntax "${diff.green}"
  plus-non-emph-style           = syntax "${diff.green}"
  plus-emph-style               = syntax "${delta.green}"
  plus-empty-line-marker-style  = syntax "${diff.green}"
  line-numbers-plus-style       = "${syntax.green}"
  line-numbers-zero-style       = "${ui.base}"
]],
    {
      ui = colors.ui,
      syntax = colors.syntax,
      diff = diff,
      delta = delta,
    }
  )
end

return M
