local function callback()
  return {
    IndentBlanklineChar = { fg = C.ui.none_text },
    IndentBlanklineContextStart = { fg = C.ui.text_active, underline = true },
    IndentBlanklineContextChar = { fg = C.ui.text },
    IndentBlanklineSpaceCharBlankline = { fg = C.ui.none_text },
    IndentBlanklineSpaceshar = { fg = C.ui.none_text },
    IblIndent = { fg = C.ui.none_text },
    IblWhitespace = { fg = C.ui.none_text },
    IblScope = { fg = C.ui.text },
  }
end

return callback
