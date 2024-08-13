local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [=[
/* ${_style_name} MonkeyType Colors */
:root {
    --bg-color: ${ui.base};
    --caret-color: ${ui.text};
    --main-color: ${ui.accent};
    --sub-color: ${syntax.comment};
    --sub-alt-color: ${ui.inactive_base};
    --text-color: ${syntax.text};
    --error-color: ${syntax.red};
    --error-extra-color: ${ui.red};
    --colorful-error-color: ${syntax.red};
    --colorful-error-extra-color: ${ui.red};
   }
]=],
    colors
  )
end

return M
