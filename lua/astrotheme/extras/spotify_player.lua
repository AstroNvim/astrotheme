local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [=[
[[themes]]
name = "${_style_name}"
[themes.palette]
background = "${ui.base}"
foreground = "${syntax.text}"
black = "${term.black}"
red = "${term.red}"
green = "${term.green}"
yellow = "${term.yellow}"
blue = "${term.blue}"
magenta = "${term.purple}"
cyan = "${term.cyan}"
white = "${term.white}"
bright_black = "${term.bright_black}"
bright_red = "${term.bright_red}"
bright_green = "${term.bright_green}"
bright_yellow = "${term.bright_yellow}"
bright_blue = "${term.bright_blue}"
bright_magenta = "${term.bright_purple}"
bright_cyan = "${term.bright_cyan}"
bright_white = "${term.bright_white}"
]=],
    colors
  )
end

return M
