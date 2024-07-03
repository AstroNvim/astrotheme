---@type AstroThemeCallback
local function callback(c, opts)
  return {
    NvChAsciiHeader = { bg = opts.transparent and c.none or c.ui.base, fg = c.ui.title }, -- Title
    NvChSection = { bg = c.ui.highlight }, -- Each card

    -- Colors for the headers
    NvCheatsheetWhite = { bg = c.ui.text_match, fg = c.ui.base },
    NvCheatsheetGray = { bg = c.ui.text, fg = c.ui.base },
    NvCheatsheetBlue = { bg = c.ui.blue, fg = c.ui.base },
    NvCheatsheetCyan = { bg = c.ui.cyan, fg = c.ui.base },
    NvCheatsheetRed = { bg = c.ui.red, fg = c.ui.base },
    NvCheatsheetGreen = { bg = c.ui.green, fg = c.ui.base },
    NvCheatsheetYellow = { bg = c.ui.yellow, fg = c.ui.base },
    NvCheatsheetOrange = { bg = c.ui.orange, fg = c.ui.base },
    NvCheatsheetPurple = { bg = c.ui.purple, fg = c.ui.base },
    NvCheatsheetMagenta = { bg = c.syntax.purple, fg = c.ui.base },
  }
end

return callback
