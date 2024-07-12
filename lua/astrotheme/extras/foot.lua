local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  local function normalize_colors(_colors)
    local new_colors = {}
    for k, v in pairs(_colors) do
      new_colors[k] = type(v) == "string" and v:gsub("^#", "") or normalize_colors(v)
    end
    return new_colors
  end
  return util.template(
    [[
[cursor]
color=${syntax.text} ${ui.selection}

[colors]
foreground=${syntax.text}
background=${ui.base}
selection-foreground=${syntax.text}
selection-background=${ui.selection}
urls=${syntax.blue}

regular0=${term.black}
regular1=${term.red}
regular2=${term.green}
regular3=${term.yellow}
regular4=${term.blue}
regular5=${term.purple}
regular6=${term.cyan}
regular7=${term.white}

bright0=${term.bright_black}
bright1=${term.bright_red}
bright2=${term.bright_green}
bright3=${term.bright_yellow}
bright4=${term.bright_blue}
bright5=${term.bright_purple}
bright6=${term.bright_cyan}
bright7=${term.bright_white}

16=${ui.orange}
17=${ui.red}]],
    normalize_colors(colors)
  )
end

return M
