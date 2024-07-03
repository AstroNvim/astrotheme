---@type AstroThemeCallback
local function callback(colors)
  return {
    MasonNormal = { link = "NormalFloat" },
    MasonHeader = { link = "FloatTitle" },
    MasonHeaderSecondary = { bold = true, fg = colors.ui.base, bg = colors.ui.blue },

    MasonHighlight = { fg = colors.ui.blue },
    MasonHighlightBlock = { bg = colors.ui.blue, fg = colors.ui.base },
    MasonHighlightBlockBold = { bg = colors.ui.accent, fg = colors.ui.base, bold = true },

    MasonHighlightSecondary = { fg = colors.ui.accent },
    MasonHighlightBlockSecondary = { bg = colors.ui.accent, fg = colors.ui.base },
    MasonHighlightBlockBoldSecondary = { bg = colors.ui.accent, fg = colors.ui.base, bold = true },

    MasonLink = { link = "MasonHighlight" },

    MasonMuted = { fg = colors.ui.red },
    MasonMutedBlock = { link = "CursorLine" },
    MasonMutedBlockBold = { bg = colors.ui.blue, fg = colors.ui.base, bold = true },

    MasonError = { link = "ErrorMsg" },
    MasonWarning = { link = "WarningMsg" },

    MasonHeading = { bold = true },
  }
end

return callback
