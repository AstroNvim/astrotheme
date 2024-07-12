local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
# Add the following object to your Windows Terminal configuration
# https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes#creating-your-own-color-scheme
{
    "background": "${ui.base}",
    "black": "${term.black}",
    "blue": "${term.blue}",
    "brightBlack": "${term.bright_black}",
    "brightBlue": "${term.bright_blue}",
    "brightCyan": "${term.bright_cyan}",
    "brightGreen": "${term.bright_green}",
    "brightPurple": "${term.bright_purple}",
    "brightRed": "${term.bright_red}",
    "brightWhite": "${term.bright_white}",
    "brightYellow": "${term.bright_yellow}",
    "cursorColor": "${syntax.text}",
    "cyan": "${term.cyan}",
    "foreground": "${syntax.text}",
    "green": "${term.green}",
    "name": "${_style_name}",
    "purple": "${term.purple}",
    "red": "${term.red}",
    "selectionBackground": "${ui.selection}",
    "white": "${term.white}",
    "yellow": "${term.yellow}"
}
]],
    colors
  )
end

return M
