local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [=[
# AstroTheme Alacritty Colors
# Default colors
[colors.primary]
background = '${ui.base}'
foreground = '${ui.text}'

# Normal colors
[colors.normal]
black = '${term.black}'
red = '${term.red}'
green = '${term.green}'
yellow = '${term.yellow}'
blue = '${term.blue}'
magenta = '${term.purple}'
cyan = '${term.cyan}'
white = '${term.white}'

# Bright colors
[colors.bright]
black = '${term.bright_black}'
red = '${term.bright_red}'
green = '${term.bright_green}'
yellow = '${term.bright_yellow}'
blue = '${term.bright_blue}'
magenta = '${term.bright_purple}'
cyan = '${term.bright_cyan}'
white = '${term.bright_white}'

# Indexed Colors
[[colors.indexed_colors]]
index = 16
color = '${ui.orange}'

[[colors.indexed_colors]]
index = 17
color = '${ui.red}'

]=],
    colors
  )
end

return M
