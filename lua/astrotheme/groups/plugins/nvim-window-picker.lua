---@type AstroThemeCallback
local function callback(c)
  return {
    WindowPickerStatusLine = { fg = c.ui.red },
    WindowPickerStatusLineNC = { fg = c.ui.red },
    WindowPickerWinBar = { fg = c.ui.red },
    WindowPickerWinBarNC = { fg = c.ui.red },
  }
end

return callback
