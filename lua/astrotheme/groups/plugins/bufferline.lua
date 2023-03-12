local function callback()
  return {
    BufferLineBufferVisible = { fg = C.text, bg = C.base },
    BufferLineBufferSelected = { fg = C.surface2, bg = C.base, bold = true },
    BufferLineTab = { fg = C.surface0, bg = C.base },
    BufferLineTabSelected = { fg = C.text, bg = C.base },
    BufferLineTabClose = { fg = C.red, bg = C.base },
    BufferLineIndicatorSelected = { fg = C.base, bg = C.base },
    BufferLineCloseButtonVisible = { fg = C.surface0, bg = C.base },
    BufferLineCloseButtonSelected = { fg = C.red, bg = C.base },
    BufferLineModifiedVisible = { fg = C.text, bg = C.base },
    BufferLineModifiedSelected = { fg = C.green, bg = C.base },
    BufferLineError = { fg = C.dark_red, bg = C.dark_red },
    BufferLineErrorDiagnostic = { fg = C.dark_red, bg = C.dark_red },
  }
end

return callback
