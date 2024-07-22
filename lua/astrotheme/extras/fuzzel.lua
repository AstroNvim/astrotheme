local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  local function normalize_colors(_colors)
    local new_colors = {}
    for k, v in pairs(_colors) do
      local new_color = v
      if type(v) == "string" and v:match "^#" then
        new_color = v:gsub("^#", "") .. "FF"
      elseif type(v) == "table" then
        new_color = normalize_colors(v)
      end
      new_colors[k] = new_color
    end
    return new_colors
  end
  return util.template(
    [[
[colors]
background=${ui.float}
text=${ui.text}
match=${ui.accent}
selection=${ui.selection}
selection-match=${ui.accent}
selection-text=${ui.text}
border=${ui.border}
]],
    normalize_colors(colors)
  )
end

return M
