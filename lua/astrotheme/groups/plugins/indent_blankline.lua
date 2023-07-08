local function callback()
  return {
    IndentBlanklineSpaceChar = { fg = C.syntax.subtext1, nocombine = true },
    IndentBlanklineChar = { fg = C.syntax.subtext1, nocombine = true },
    IndentBlanklineContextStart = { fg = C.syntax.subtext1, underline = true },
    IndentBlanklineContextChar = { fg = C.syntax.subtext1, nocombine = true },
    IndentBlanklineSpaceCharBlankline = { fg = C.syntax.subtext1, nocombine = true },
  }
end

return callback
