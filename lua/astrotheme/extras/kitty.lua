local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
# vim:ft=kitty

## name: ${_style_name}
## license: MIT
## author: AstroNvim
## upstream: ${_upstream_url}


background ${ui.base}
foreground ${syntax.text}
selection_background ${ui.selection}
selection_foreground ${syntax.text}
url_color ${syntax.blue}
cursor ${syntax.text}
cursor_text_color ${ui.base}

# Tabs
active_tab_background ${ui.accent}
active_tab_foreground ${ui.base}
inactive_tab_background ${ui.base}
inactive_tab_foreground ${ui.text_inactive}

# Windows
active_border_color ${ui.accent}
inactive_border_color ${ui.border}

# normal
color0 ${term.black}
color1 ${term.red}
color2 ${term.green}
color3 ${term.yellow}
color4 ${term.blue}
color5 ${term.purple}
color6 ${term.cyan}
color7 ${term.white}

# bright
color8 ${term.bright_black}
color9 ${term.bright_red}
color10 ${term.bright_green}
color11 ${term.bright_yellow}
color12 ${term.bright_blue}
color13 ${term.bright_purple}
color14 ${term.bright_cyan}
color15 ${term.bright_white}

# extended colors
color16 ${ui.orange}
color17 ${ui.red}
]],
    colors
  )
end

return M
