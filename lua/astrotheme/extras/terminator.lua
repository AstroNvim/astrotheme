local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [=[
[[${_style_name}]]
  palette = "${term.black}:${term.red}:${term.green}:${term.yellow}:${term.blue}:${term.purple}:${term.cyan}:${term.white}:${term.bright_black}:${term.bright_red}:${term.bright_green}:${term.bright_yellow}:${term.bright_blue}:${term.bright_purple}:${term.bright_cyan}:${term.bright_white}"
  background_color = "${ui.base}"
  foreground_color = "${syntax.text}"
]=],
    colors
  )
end

return M
