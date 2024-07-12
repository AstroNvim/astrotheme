local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
! ${_style_name} colors for Xresources

*background: ${ui.base}
*foreground: ${syntax.text}

*color0: ${term.black}
*color1: ${term.red}
*color2: ${term.green}
*color3: ${term.yellow}
*color4: ${term.blue}
*color5: ${term.purple}
*color6: ${term.cyan}
*color7: ${term.white}

*color8: ${term.bright_black}
*color9: ${term.bright_red}
*color10: ${term.bright_green}
*color11: ${term.bright_yellow}
*color12: ${term.bright_blue}
*color13: ${term.bright_purple}
*color14: ${term.bright_cyan}
*color15: ${term.bright_white}
]],
    colors
  )
end

return M
