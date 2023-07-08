local function callback()
  return {
    BufferLineBufferVisible = { fg = C.syntax.subtext0, bg = C.ui.base },
    BufferLineBufferSelected = { fg = C.syntax.text, bg = C.ui.base, bold = true },
    BufferLineTab = { fg = C.syntax.subtext1, bg = C.ui.tabline },
    BufferLineTabSelected = { fg = C.syntax.text, bg = C.ui.tabline },
    BufferLineTabClose = { fg = C.syntax.red, bg = C.ui.tabline },
    BufferLineIndicatorSelected = { fg = C.ui.base, bg = C.ui.base },
    BufferLineCloseButtonVisible = { fg = C.syntax.red, bg = C.tableline },
    BufferLineCloseButtonSelected = { fg = C.syntax.red, bg = C.ui.tabline },
    BufferLineModifiedVisible = { fg = C.syntax.text, bg = C.ui.base },
    BufferLineModifiedSelected = { fg = C.ui.green, bg = C.ui.base },
    BufferLineModified = { fg = C.ui.green, bg = C.ui.tabline },
    BufferLineError = { fg = C.ui.red, bg = C.ui.red },
    BufferLineErrorDiagnostic = { fg = C.ui.red, bg = C.ui.red },
  }
end

return callback
