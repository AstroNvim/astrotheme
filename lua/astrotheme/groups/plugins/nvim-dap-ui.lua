---@type AstroThemeCallback
local function callback(colors)
  return {
    DapUIVariable = { link = "Identifier" },
    DapUIScope = { link = "Title" },
    DapUIType = { link = "Type" },
    DapUIValue = { fg = colors.syntax.red },
    DapUIModifiedValue = { fg = colors.ui.yellow, bold = true },
    DapUIDecoration = { fg = colors.ui.none_text },
    DapUIThread = { link = "String" },
    DapUIStoppedThread = { link = "Title" },
    DapUIFrameName = { link = "Normal" },
    DapUISource = { link = "Keyword" },
    DapUILineNumber = { link = "Number" },
    DapUIFloatBorder = { link = "FloatBorder" },
    DapUIWatchesEmpty = { fg = colors.ui.red },
    DapUIWatchesValue = { fg = colors.ui.orange },
    DapUIWatchesError = { fg = colors.ui.red },
    DapUIBreakpointsPath = { link = "Title" },
    DapUIBreakpointsInfo = { fg = colors.ui.purple },
    DapUIBreakpointsCurrentLine = { fg = colors.ui.yellow, bold = true },
    DapUIBreakpointsLine = { link = "DapUILineNumber" },
    DapUIBreakpointsDisabledLine = { link = "Comment" },
    DapUIPlayPause = { fg = colors.ui.green },
    DapUIStop = { fg = colors.ui.red },
    DapUIRestart = { fg = colors.ui.yellow },
    DapUIStepOver = { fg = colors.ui.blue },
    DapUIStepInto = { fg = colors.ui.blue },
    DapUIStepBack = { fg = colors.ui.blue },
    DapUIStepOut = { fg = colors.ui.blue },
  }
end

return callback
