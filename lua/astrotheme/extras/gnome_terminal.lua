local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  local function normalize_colors(_colors)
    local new_colors = {}
    for k, v in pairs(_colors) do
      local new_color = v
      if type(v) == "string" and v:match "^#" then
        local hex = v:gsub("^#", "")
        new_color = string.format(
          "rgb(%d, %d, %d)",
          tonumber(hex:sub(1, 2), 16),
          tonumber(hex:sub(3, 4), 16),
          tonumber(hex:sub(5, 6), 16)
        )
      elseif type(v) == "table" then
        new_color = normalize_colors(v)
      end
      new_colors[k] = new_color
    end
    return new_colors
  end
  return util.template(
    [[
# Import this theme as follows:
# 1. Create a new profile for GNOME Terminal
# 2. Copy the UUID of the new profile (bottom right corner of the preferences window)
# 3. Replace <PROFILE_UUID> below with the copied UUID
# 4. Execute `dconf load /org/gnome/terminal/legacy/profiles:/ < ${_style}.dconf`
[:<PROFILE_UUID>]
background-color='${ui.base}'
cursor-background-color='${ui.text}'
cursor-colors-set=true
cursor-foreground-color='${ui.base}'
foreground-color='${syntax.text}'
highlight-background-color='${ui.selection}'
highlight-colors-set=true
highlight-foreground-color='${syntax.text}'
palette=['${term.black}', '${term.red}', '${term.green}', '${term.yellow}', '${term.blue}', '${term.purple}', '${term.cyan}', '${term.white}', '${term.bright_black}', '${term.bright_red}', '${term.bright_green}', '${term.bright_yellow}', '${term.bright_blue}', '${term.bright_purple}', '${term.bright_cyan}', '${term.bright_white}']
use-theme-colors=false
visible-name='${_style_name}'
]],
    normalize_colors(colors)
  )
end

return M
