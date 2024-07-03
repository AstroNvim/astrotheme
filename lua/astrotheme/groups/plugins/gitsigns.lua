---@type AstroThemeCallback
local function callback(colors)
  return {
    GitSignsAdd = { fg = colors.ui.green, bg = colors.none },
    GitSignsChange = { fg = colors.ui.orange, bg = colors.none },
    GitSignsDelete = { fg = colors.ui.red, bg = colors.none },
    MoreMsg = { fg = colors.ui.text, bold = true },
    ModeMsg = { fg = colors.ui.text, bold = true },
  }
end

return callback
