local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
## name: ${_style_name}
## author: AstroNvim
## upstream: ${_upstream_url}

background = ${ui.base}
foreground= ${syntax.text}
selection-foreground= ${syntax.text}
selection-background = ${ui.selection}

# Colors can be changed by setting the 16 colors of `palette`, which each color
# being defined as regular and bold.
#
# black
palette = 0=${term.black}
palette = 8=${term.bright_black}
# red
palette = 1=${term.red}       
palette = 9=${term.bright_red}
# green
palette = 2=${term.green}
palette = 10=${term.bright_green}
# yellow
palette = 3=${term.yellow}
palette = 11=${term.bright_yellow}
# blue
palette = 4=${term.blue}
palette = 12=${term.bright_blue}
# purple
palette = 5=${term.purple}
palette = 13=${term.bright_purple}
# aqua
palette = 6=${term.cyan}
palette = 14=${term.bright_cyan}
# white
palette = 7=${term.white}
palette = 15=${term.bright_white}
]],
    colors
  )
end

return M
