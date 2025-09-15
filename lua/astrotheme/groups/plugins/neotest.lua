---@type AstroThemeCallback
local function callback(c)
  return {
    NeotestAdapterName = "Title",
    NeotestBorder = { fg = c.ui.border },
    NeotestDir = "Directory",
    NeotestExpandMarker = "Conceal",
    NeotestFailed = "ErrorMsg",
    NeotestFile = "DiffFile",
    NeotestFocused = { underline = true },
    NeotestIndent = "Conceal",
    NeotestMarked = { fg = c.ui.cyan },
    NeotestNamespace = { fg = c.ui.text, bold = true },
    NeotestPassed = "DiagnosticOk",
    NeotestRunning = "DiagnosticWarn",
    NeotestSkipped = "DiagnosticHint",
    NeotestTarget = "DiagnosticInfo",
    NeotestTest = { fg = c.ui.text },
    NeotestUnknown = { fg = c.ui.text },
    NeotestWatching = "DiagnosticInfo",
    NeotestWinSelect = "PmenuSel",
  }
end

return callback
