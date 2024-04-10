---@type AstroThemeCallback
local function callback(opts)
  return {
    NvChAsciiHeader = { bg = opts.transparent and C.none or C.ui.base, fg = C.ui.title }, -- Title
    NvChSection = { bg = C.ui.highlight }, -- Each card

    -- Colors for the headers
    NvCheatsheetWhite = { bg = C.ui.text_match, fg = C.ui.base },
    NvCheatsheetGray = { bg = C.ui.text, fg = C.ui.base },
    NvCheatsheetBlue = { bg = C.ui.blue, fg = C.ui.base },
    NvCheatsheetCyan = { bg = C.ui.cyan, fg = C.ui.base },
    NvCheatsheetRed = { bg = C.ui.red, fg = C.ui.base },
    NvCheatsheetGreen = { bg = C.ui.green, fg = C.ui.base },
    NvCheatsheetYellow = { bg = C.ui.yellow, fg = C.ui.base },
    NvCheatsheetOrange = { bg = C.ui.orange, fg = C.ui.base },
    NvCheatsheetPurple = { bg = C.ui.purple, fg = C.ui.base },
    NvCheatsheetMagenta = { bg = C.syntax.purple, fg = C.ui.base },
  }
end

return callback
