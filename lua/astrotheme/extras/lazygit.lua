local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
gui:
  nerdFontsVersion: "3"
  theme:
    activeBorderColor:
      - "${ui.accent}"
      - "bold"
    inactiveBorderColor:
      - "${ui.border}"
    searchingActiveBorderColor:
      - "${ui.accent}"
      - "bold"
    optionsTextColor:
      - "${syntax.blue}"
    selectedLineBgColor:
      - "${ui.selection}"
    cherryPickedCommitFgColor:
      - "${ui.base}"
    cherryPickedCommitBgColor:
      - "${syntax.purple}"
    markedBaseCommitFgColor:
      - "${ui.base}"
    markedBaseCommitBgColor:
      - "${syntax.yellow}"
    unstagedChangesColor:
      - "${syntax.red}"
    defaultFgColor:
      - "${syntax.text}"
]],
    colors
  )
end

return M
