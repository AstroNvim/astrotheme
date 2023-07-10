local function callback()
  return {
    DapUIVariable = { link = "Identifier" },
    DapUIScope = { link = "Title" },
    DapUIType = { link = "Type" },
    DapUIValue = { fg = C.syntax.red },
    DapUIModifiedValue = { fg = C.ui.yellow, bold = true },
    DapUIDecoration = { fg = C.ui.none_text },
    DapUIThread = { link = "String" },
    DapUIStoppedThread = { link = "Title" },
    DapUIFrameName = { link = "Normal" },
    DapUISource = { link = "Keyword" },
    DapUILineNumber = { link = "Number" },
    DapUIFloatBorder = { link = "FloatBorder" },
    DapUIWatchesEmpty = { fg = C.ui.red },
    DapUIWatchesValue = { fg = C.ui.orange },
    DapUIWatchesError = { fg = C.ui.red },
    DapUIBreakpointsPath = { link = "Title" },
    DapUIBreakpointsInfo = { fg = C.ui.purple },
    DapUIBreakpointsCurrentLine = { fg = C.ui.yellow, bold = true },
    DapUIBreakpointsLine = { link = "DapUILineNumber" },
    DapUIBreakpointsDisabledLine = { link = "Comment" },
    DapUIPlayPause = { fg = C.ui.green },
    DapUIStop = { fg = C.ui.red },
    DapUIRestart = { fg = C.ui.yellow },
    DapUIStepOver = { fg = C.ui.blue },
    DapUIStepInto = { fg = C.ui.blue },
    DapUIStepBack = { fg = C.ui.blue },
    DapUIStepOut = { fg = C.ui.blue },
  }
end

return callback
