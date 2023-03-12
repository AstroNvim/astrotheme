local function callback()
  return {
    IndentBlanklineSpaceChar = { fg = C.surface1, nocombine = true },
    IndentBlanklineChar = { fg = C.surface1, nocombine = true },
    IndentBlanklineContextStart = { fg = C.surface0, underline = true },
    IndentBlanklineContextChar = { fg = C.surface0, nocombine = true },
    IndentBlanklineSpaceCharBlankline = { fg = C.surface1, nocombine = true },
  }
end

return callback
