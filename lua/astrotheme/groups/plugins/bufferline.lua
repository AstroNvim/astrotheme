---@type AstroThemeCallback
local function callback(colors)
  return {
    BufferLineBufferVisible = { fg = colors.ui.text_inactive, bg = colors.ui.base },
    BufferLineBufferSelected = { fg = colors.ui.text_active, bg = colors.ui.base, bold = true },
    BufferLineTab = { fg = colors.ui.text_inactive, bg = colors.ui.tabline },
    BufferLineTabSelected = { fg = colors.ui.text, bg = colors.ui.tabline },
    BufferLineTabClose = { fg = colors.ui.red, bg = colors.ui.tabline },
    BufferLineIndicatorSelected = { fg = colors.ui.base, bg = colors.ui.base },
    BufferLineCloseButtonVisible = { fg = colors.ui.red, bg = colors.ui.tabline },
    BufferLineCloseButtonSelected = { fg = colors.ui.red, bg = colors.ui.tabline },
    BufferLineModifiedVisible = { fg = colors.ui.text, bg = colors.ui.base },
    BufferLineModifiedSelected = { fg = colors.ui.green, bg = colors.ui.base },
    BufferLineModified = { fg = colors.ui.green, bg = colors.ui.tabline },
    BufferLineError = { fg = colors.ui.red, bg = colors.ui.red },
    BufferLineErrorDiagnostic = { fg = colors.ui.red, bg = colors.ui.red },
  }
end

return callback
