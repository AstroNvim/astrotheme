---@type AstroThemeCallback
local function callback(c)
  return {
    IndentBlanklineChar = { fg = c.ui.none_text },
    IndentBlanklineContextStart = { fg = c.ui.text_active, underline = true },
    IndentBlanklineContextChar = { fg = c.ui.text },
    IndentBlanklineSpaceCharBlankline = { fg = c.ui.none_text },
    IndentBlanklineSpaceshar = { fg = c.ui.none_text },
    IblIndent = { fg = c.ui.none_text },
    IblWhitespace = { fg = c.ui.none_text },
    IblScope = { fg = c.ui.text },
  }
end

return callback
