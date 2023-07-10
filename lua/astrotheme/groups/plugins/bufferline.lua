local function callback()
  return {
    BufferLineBufferVisible = { fg = C.ui.text_inactive, bg = C.ui.base },
    BufferLineBufferSelected = { fg = C.ui.text_active, bg = C.ui.base, bold = true },
    BufferLineTab = { fg = C.ui.text_inactve, bg = C.ui.tabline },
    BufferLineTabSelected = { fg = C.ui.text, bg = C.ui.tabline },
    BufferLineTabClose = { fg = C.ui.red, bg = C.ui.tabline },
    BufferLineIndicatorSelected = { fg = C.ui.base, bg = C.ui.base },
    BufferLineCloseButtonVisible = { fg = C.ui.red, bg = C.tableline },
    BufferLineCloseButtonSelected = { fg = C.ui.red, bg = C.ui.tabline },
    BufferLineModifiedVisible = { fg = C.ui.text, bg = C.ui.base },
    BufferLineModifiedSelected = { fg = C.ui.green, bg = C.ui.base },
    BufferLineModified = { fg = C.ui.green, bg = C.ui.tabline },
    BufferLineError = { fg = C.ui.red, bg = C.ui.red },
    BufferLineErrorDiagnostic = { fg = C.ui.red, bg = C.ui.red },
  }
end

return callback
