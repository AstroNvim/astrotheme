---@type AstroThemeCallback
local function callback(c)
  return {
    BufferLineBufferVisible = { fg = c.ui.text_inactive, bg = c.ui.base },
    BufferLineBufferSelected = { fg = c.ui.text_active, bg = c.ui.base, bold = true },
    BufferLineTab = { fg = c.ui.text_inactive, bg = c.ui.tabline },
    BufferLineTabSelected = { fg = c.ui.text, bg = c.ui.tabline },
    BufferLineTabClose = { fg = c.ui.red, bg = c.ui.tabline },
    BufferLineIndicatorSelected = { fg = c.ui.base, bg = c.ui.base },
    BufferLineCloseButtonVisible = { fg = c.ui.red, bg = c.ui.tabline },
    BufferLineCloseButtonSelected = { fg = c.ui.red, bg = c.ui.tabline },
    BufferLineModifiedVisible = { fg = c.ui.text, bg = c.ui.base },
    BufferLineModifiedSelected = { fg = c.ui.green, bg = c.ui.base },
    BufferLineModified = { fg = c.ui.green, bg = c.ui.tabline },
    BufferLineError = { fg = c.ui.red, bg = c.ui.red },
    BufferLineErrorDiagnostic = { fg = c.ui.red, bg = c.ui.red },
  }
end

return callback
