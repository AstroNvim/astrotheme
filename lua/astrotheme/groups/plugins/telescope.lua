local function callback()
  return {
    ----------------
    --- Title
    ----------------
    TelescopeTitle = { link = "PopupTitle" },
    TelescopeResultsTitle = { link = "TelescopeTitle" },
    TelescopePromptTitle = { link = "TelescopeTitle" },
    TelescopePreviewTitle = { link = "TelescopeTitle" },

    ----------------
    --- Normal
    ----------------
    TelescopeNormal = { link = "NormalPopup" },
    TelescopePreviewNormal = { link = "TelescopeNormal" },
    TelescopePromptNormal = { link = "TelescopeNormal" },
    TelescopeResultsNormal = { link = "TelescopeNormal" },

    ----------------
    --- Border
    ----------------
    TelescopeBorder = { link = "PopupBorder" },
    TelescopeResultsBorder = { link = "TelescopeBorder" },
    TelescopePromptBorder = { link = "TelescopeBorder" },
    TelescopePreviewBorder = { link = "TelescopeBorder" },

    ----------------
    --- Other
    ----------------
    TelescopePromptPrefix = { fg = C.ui.accent },
    TelescopeSelectionCaret = { fg = C.ui.accent },
    TelescopeMatching = { fg = C.ui.text_match },
    TelescopeSelection = { bg = C.ui.current_line },
    -- TelescopeSelection = { fg = C.ui.base, bg = C.ui.accent, bold = true },
    TelescopeMultiSelection = { fg = C.syntax.blue },
    TelescopeMultiIcon = { fg = C.ui.blue },
  }
end

return callback
