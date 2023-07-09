local function callback()
  return {
    ----------------
    --- Title
    ----------------
    TelescopeResultsTitle = { fg = C.ui.title },
    TelescopePromptTitle = { fg = C.ui.title },
    TelescopePreviewTitle = { fg = C.ui.title },

    ----------------
    --- Border
    ----------------
    TelescopeResultsBorder = { fg = C.ui.border },
    TelescopePromptBorder = { fg = C.ui.border },
    TelescopePreviewBorder = { fg = C.ui.border },

    TelescopeSelectionCaret = { fg = C.syntax.red },
    TelescopeMatching = { fg = C.syntax.yellow },
    TelescopeSelection = { bg = C.ui.current_line },
    TelescopeMultiSelection = { fg = C.syntax.blue },
    TelescopeMultiIcon = { fg = C.syntax.blue },

    TelescopeNormal = { link = "NormalFloat" },
    TelescopePreviewNormal = { link = "NormalFloat" },
    TelescopePromptNormal = { link = "NormalFloat" },
    TelescopeResultsNormal = { link = "NormalFloat" },

    TelescopeBorder = { fg = C.ui.border },
    TelescopeTitle = { fg = C.syntax.text },
    TelescopePromptCounter = { fg = C.syntax.subtext1 },
    TelescopePromptPrefix = { fg = C.syntax.blue },
    TelescopePreviewLine = { bg = C.ui.current_line },
    TelescopePreviewMatch = { fg = C.syntax.yellow },
    TelescopePreviewPipe = { fg = C.syntax.yellow },
    TelescopePreviewCharDev = { fg = C.syntax.yellow },
    TelescopePreviewDirectory = { fg = C.syntax.blue },
    TelescopePreviewBlock = { fg = C.syntax.yellow },
    TelescopePreviewLink = { fg = C.syntax.blue },
    TelescopePreviewSocket = { fg = C.syntax.purple },
    TelescopePreviewRead = { fg = C.syntax.yellow },
    TelescopePreviewWrite = { fg = C.syntax.purple },
    TelescopePreviewExecute = { fg = C.syntax.green },
    TelescopePreviewHyphen = { fg = C.syntax.subtext1 },
    TelescopePreviewSticky = { fg = C.syntax.blue },
    TelescopePreviewSize = { fg = C.syntax.green },
    TelescopePreviewUser = { fg = C.syntax.yellow },
    TelescopePreviewGroup = { fg = C.syntax.yellow },
    TelescopePreviewDate = { fg = C.syntax.blue },
    TelescopePreviewMessage = { fg = C.syntax.text },
    TelescopePreviewMessageFillchar = { fg = C.syntax.text },
    TelescopeResultsClass = { fg = C.syntax.yellow },
    TelescopeResultsConstant = { fg = C.syntax.yellow },
    TelescopeResultsField = { fg = C.syntax.red },
    TelescopeResultsFunction = { fg = C.syntax.blue },
    TelescopeResultsMethod = { fg = C.syntax.blue },
    TelescopeResultsOperator = { fg = C.syntax.cyan },
    TelescopeResultsStruct = { fg = C.syntax.purple },
    TelescopeResultsVariable = { fg = C.syntax.red },
    TelescopeResultsLineNr = { fg = C.syntax.subtext1 },
    TelescopeResultsIdentifier = { fg = C.syntax.blue },
    TelescopeResultsNumber = { fg = C.syntax.orange },
    TelescopeResultsComment = { fg = C.syntax.comment },
    TelescopeResultsSpecialComment = { fg = C.syntax.subtext1 },
    TelescopeResultsDiffChange = { fg = C.none, bg = C.syntax.yellow },
    TelescopeResultsDiffAdd = { fg = C.none, bg = C.syntax.green },
    TelescopeResultsDiffDelete = { fg = C.none, bg = C.syntax.red },
    TelescopeResultsDiffUntracked = { fg = C.none, bg = C.syntax.subtext1 },
  }
end

return callback
