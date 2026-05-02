local util = require "astrotheme.extras"

local M = {}

local function normalize_colors(colors)
  local new_colors = {}
  for key, value in pairs(colors) do
    local new_value = value
    if type(value) == "string" and value:match "^#" then
      local hex = value:gsub("^#", "")
      new_value =
        string.format("%d,%d,%d", tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16))
    elseif type(value) == "table" then
      new_value = normalize_colors(value)
    end
    new_colors[key] = new_value
  end
  return new_colors
end

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
[Background]
Color=${ui.base}

[BackgroundFaint]
Color=${ui.base}

[BackgroundIntense]
Color=${ui.base}

[Color0]
Color=${term.black}

[Color0Faint]
Color=${term.black}

[Color0Intense]
Color=${term.bright_black}

[Color1]
Color=${term.red}

[Color1Faint]
Color=${term.red}

[Color1Intense]
Color=${term.bright_red}

[Color2]
Color=${term.green}

[Color2Faint]
Color=${term.green}

[Color2Intense]
Color=${term.bright_green}

[Color3]
Color=${term.yellow}

[Color3Faint]
Color=${term.yellow}

[Color3Intense]
Color=${term.bright_yellow}

[Color4]
Color=${term.blue}

[Color4Faint]
Color=${term.blue}

[Color4Intense]
Color=${term.bright_blue}

[Color5]
Color=${term.purple}

[Color5Faint]
Color=${term.purple}

[Color5Intense]
Color=${term.bright_purple}

[Color6]
Color=${term.cyan}

[Color6Faint]
Color=${term.cyan}

[Color6Intense]
Color=${term.bright_cyan}

[Color7]
Color=${term.white}

[Color7Faint]
Color=${term.white}

[Color7Intense]
Color=${term.bright_white}

[Foreground]
Color=${syntax.text}

[ForegroundFaint]
Color=${term.white}

[ForegroundIntense]
Color=${term.bright_white}

[General]
Blur=false
ColorRandomization=false
Description=${_style_name}
Opacity=1
Wallpaper=
]],
    normalize_colors(colors)
  )
end

return M
