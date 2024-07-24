local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
style:
  name: ${_style_name}
  body:
    fgColor: '${syntax.text}'
    bgColor: '${ui.base}'
    secondaryTextColor: '${syntax.comment}'
    tertiaryTextColor: '${syntax.mute}'
    borderColor: '${ui.border}'
  stat_table:
    keyFgColor: '${ui.yellow}'
    valueFgColor: '${ui.text}'
    logoColor: '${ui.yellow}'
  proc_table:
    fgColor: '${ui.blue}'
    fgWarning: '${ui.yellow}'
    fgPending: '${ui.text_inactive}'
    fgCompleted: '${ui.green}'
    fgError: '${ui.red}'
    headerFgColor: '${ui.text}'
  help:
    fgColor: '${ui.blue}'
    keyColor: '${ui.text}'
    hlColor: '${ui.green}'
    categoryFgColor: '${ui.accent}'
  dialog:
    fgColor: '${ui.blue}'
    bgColor: '${ui.float}'
    contrastBgColor: '${ui.highlight}'
    attentionBgColor: '${ui.red}'
    buttonFgColor: '${ui.text}'
    buttonBgColor: '${ui.highlight}'
    buttonFocusFgColor: '${ui.text_active}'
    buttonFocusBgColor: '${ui.accent}'
    labelFgColor: '${ui.yellow}'
    fieldFgColor: '${ui.text}'
    fieldBgColor: '${ui.selection}'
]],
    colors
  )
end

return M
