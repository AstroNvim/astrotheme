---@type AstroThemeCallback
local function callback(colors, opts)
  return {
    NvChAsciiHeader = { bg = opts.transparent and colors.none or colors.ui.base, fg = colors.ui.title }, -- Title
    NvChSection = { bg = colors.ui.highlight }, -- Each card

    -- Colors for the headers
    NvCheatsheetWhite = { bg = colors.ui.text_match, fg = colors.ui.base },
    NvCheatsheetGray = { bg = colors.ui.text, fg = colors.ui.base },
    NvCheatsheetBlue = { bg = colors.ui.blue, fg = colors.ui.base },
    NvCheatsheetCyan = { bg = colors.ui.cyan, fg = colors.ui.base },
    NvCheatsheetRed = { bg = colors.ui.red, fg = colors.ui.base },
    NvCheatsheetGreen = { bg = colors.ui.green, fg = colors.ui.base },
    NvCheatsheetYellow = { bg = colors.ui.yellow, fg = colors.ui.base },
    NvCheatsheetOrange = { bg = colors.ui.orange, fg = colors.ui.base },
    NvCheatsheetPurple = { bg = colors.ui.purple, fg = colors.ui.base },
    NvCheatsheetMagenta = { bg = colors.syntax.purple, fg = colors.ui.base },
  }
end

return callback
