---@type AstroThemeCallback
local function callback(colors)
  return {
    WindowPickerStatusLine = { fg = colors.ui.red, bg = colors.none },
    WindowPickerStatusLineNC = { fg = colors.ui.red, bg = colors.none },
    WindowPickerWinBar = { fg = colors.ui.red, bg = colors.none },
    WindowPickerWinBarNC = { fg = colors.ui.red, bg = colors.none },
  }
end

return callback
