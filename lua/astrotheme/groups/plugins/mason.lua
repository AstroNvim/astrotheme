---@type AstroThemeCallback
local function callback(c)
  return {
    MasonNormal = "NormalFloat",
    MasonHeader = "FloatTitle",
    MasonHeaderSecondary = { bold = true, fg = c.ui.base, bg = c.ui.blue },

    MasonHighlight = { fg = c.ui.blue },
    MasonHighlightBlock = { bg = c.ui.blue, fg = c.ui.base },
    MasonHighlightBlockBold = { bg = c.ui.accent, fg = c.ui.base, bold = true },

    MasonHighlightSecondary = { fg = c.ui.accent },
    MasonHighlightBlockSecondary = { bg = c.ui.accent, fg = c.ui.base },
    MasonHighlightBlockBoldSecondary = { bg = c.ui.accent, fg = c.ui.base, bold = true },

    MasonLink = "MasonHighlight",

    MasonMuted = { fg = c.ui.red },
    MasonMutedBlock = "CursorLine",
    MasonMutedBlockBold = { bg = c.ui.blue, fg = c.ui.base, bold = true },

    MasonError = "ErrorMsg",
    MasonWarning = "WarningMsg",

    MasonHeading = { bold = true },
  }
end

return callback
