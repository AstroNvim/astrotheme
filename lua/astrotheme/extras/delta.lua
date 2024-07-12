local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
[delta]
  minus-style                   = syntax "${syntax.red}"
  minus-non-emph-style          = syntax "${syntax.red}"
  minus-emph-style              = syntax "${ui.red}"
  minus-empty-line-marker-style = syntax "${syntax.red}"
  line-numbers-minus-style      = "syntax.red"
  plus-style                    = syntax "${syntax.green}"
  plus-non-emph-style           = syntax "${syntax.green}"
  plus-emph-style               = syntax "${ui.green}"
  plus-empty-line-marker-style  = syntax "${syntax.green}"
  line-numbers-plus-style       = "syntax.green"
  line-numbers-zero-style       = "${ui.base}"
]],
    colors
  )
end

return M
