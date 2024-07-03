---@type AstroThemeCallback
local function callback(colors)
  return {
    IndentBlanklineChar = { fg = colors.ui.none_text },
    IndentBlanklineContextStart = { fg = colors.ui.text_active, underline = true },
    IndentBlanklineContextChar = { fg = colors.ui.text },
    IndentBlanklineSpaceCharBlankline = { fg = colors.ui.none_text },
    IndentBlanklineSpaceshar = { fg = colors.ui.none_text },
    IblIndent = { fg = colors.ui.none_text },
    IblWhitespace = { fg = colors.ui.none_text },
    IblScope = { fg = colors.ui.text },
  }
end

return callback
