local function callback()
  return {
    ----------------
    --- Title
    ----------------
    TelescopeTitle = { link = "FloatTitle" },
    TelescopeResultsTitle = { link = "TelescopeTitle" },
    TelescopePromptTitle = { link = "TelescopeTitle" },
    TelescopePreviewTitle = { link = "TelescopeTitle" },

    ----------------
    --- Normal
    ----------------
    TelescopeNormal = { link = "NormalFloat" },
    TelescopePreviewNormal = { link = "TelescopeNormal" },
    TelescopePromptNormal = { link = "TelescopeNormal" },
    TelescopeResultsNormal = { link = "TelescopeNormal" },

    ----------------
    --- Border
    ----------------
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeResultsBorder = { link = "TelescopeBorder" },
    TelescopePromptBorder = { link = "TelescopeBorder" },
    TelescopePreviewBorder = { link = "TelescopeBorder" },

    ----------------
    --- Other
    ----------------
    TelescopePromptPrefix = { fg = C.ui.accent },
    TelescopeSelectionCaret = { fg = C.ui.red },
    TelescopeMatching = { fg = C.ui.text_match },
    -- TelescopeSelection = { bg = C.ui.current_line },
    TelescopeSelection = { fg = C.ui.base, bg = C.ui.accent, bold = true },
    TelescopeMultiSelection = { fg = C.syntax.blue },
    TelescopeMultiIcon = { fg = C.ui.blue },
  }
end

return callback
