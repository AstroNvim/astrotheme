---@type AstroThemeCallback
local function callback(c)
  return {
    NeotestAdapterName = { fg = c.ui.title, bold = true },
    NeotestBorder = { fg = c.ui.border },
    NeotestDir = { fg = c.ui.blue },
    NeotestExpandMarker = { fg = c.ui.text_inactive },
    NeotestFailed = { fg = c.ui.red },
    NeotestFile = { fg = c.ui.blue },
    NeotestFocused = { underline = true },
    NeotestIndent = { fg = c.ui.text_inactive },
    NeotestMarked = { fg = c.ui.cyan },
    NeotestNamespace = { fg = c.ui.text, bold = true },
    NeotestPassed = { fg = c.ui.green },
    NeotestRunning = { fg = c.ui.yellow },
    NeotestSkipped = { fg = c.ui.blue },
    NeotestTarget = { fg = c.ui.blue },
    NeotestTest = { fg = c.ui.text },
    NeotestUnknown = { fg = c.ui.text },
    NeotestWatching = { fg = c.ui.cyan },
    NeotestWinSelect = { fg = c.ui.blue },
  }
end

return callback
