local function callback()
  return {
    MasonNormal = { link = "NormalFloat" },
    MasonHeader = { link = "FloatTitle" },
    MasonHeaderSecondary = { bold = true, fg = C.ui.base, bg = C.ui.blue },

    MasonHighlight = { fg = C.ui.blue },
    MasonHighlightBlock = { bg = C.ui.blue, fg = C.ui.base },
    MasonHighlightBlockBold = { bg = C.ui.accent, fg = C.ui.base, bold = true },

    MasonHighlightSecondary = { fg = C.ui.accent },
    MasonHighlightBlockSecondary = { bg = C.ui.accent, fg = C.ui.base },
    MasonHighlightBlockBoldSecondary = { bg = C.ui.accent, fg = C.ui.base, bold = true },

    MasonLink = { link = "MasonHighlight" },

    MasonMuted = { fg = C.ui.red },
    MasonMutedBlock = { link = "CursorLine" },
    MasonMutedBlockBold = { bg = C.ui.blue, fg = C.ui.base, bold = true },

    MasonError = { link = "ErrorMsg" },
    MasonWarning = { link = "WarningMsg" },

    MasonHeading = { bold = true },
  }
end

return callback
