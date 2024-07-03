---@type AstroThemeCallback
local function callback(c)
  return {
    DapUIVariable = "Identifier",
    DapUIScope = "Title",
    DapUIType = "Type",
    DapUIValue = { fg = c.syntax.red },
    DapUIModifiedValue = { fg = c.ui.yellow, bold = true },
    DapUIDecoration = { fg = c.ui.none_text },
    DapUIThread = "String",
    DapUIStoppedThread = "Title",
    DapUIFrameName = "Normal",
    DapUISource = "Keyword",
    DapUILineNumber = "Number",
    DapUIFloatBorder = "FloatBorder",
    DapUIWatchesEmpty = { fg = c.ui.red },
    DapUIWatchesValue = { fg = c.ui.orange },
    DapUIWatchesError = { fg = c.ui.red },
    DapUIBreakpointsPath = "Title",
    DapUIBreakpointsInfo = { fg = c.ui.purple },
    DapUIBreakpointsCurrentLine = { fg = c.ui.yellow, bold = true },
    DapUIBreakpointsLine = "DapUILineNumber",
    DapUIBreakpointsDisabledLine = "Comment",
    DapUIPlayPause = { fg = c.ui.green },
    DapUIStop = { fg = c.ui.red },
    DapUIRestart = { fg = c.ui.yellow },
    DapUIStepOver = { fg = c.ui.blue },
    DapUIStepInto = { fg = c.ui.blue },
    DapUIStepBack = { fg = c.ui.blue },
    DapUIStepOut = { fg = c.ui.blue },
  }
end

return callback
