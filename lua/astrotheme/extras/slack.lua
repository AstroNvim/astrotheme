local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors) return util.template("${ui.border},${ui.current_line},${ui.accent},${ui.selection}", colors) end

return M
