local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
// ${_style_name} Zellij Colors
// Add this file to your `CONFIG_DIR/themes` directory as described here:
// https://zellij.dev/documentation/themes#getting-zellij-to-pick-up-the-theme

themes {
    ${_style_name} {
        fg "${syntax.text}"
        bg "${ui.base}"
        black "${term.black}"
        red "${term.red}"
        green "${term.green}"
        yellow "${term.yellow}"
        blue "${term.blue}"
        magenta "${term.purple}"
        cyan "${term.cyan}"
        white "${term.white}"
        orange "${syntax.orange}"
    }
}
]],
    colors
  )
end

return M
