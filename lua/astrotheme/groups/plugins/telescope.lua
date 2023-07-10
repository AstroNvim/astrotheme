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
    TelescopeResultsBorder = { fg = C.ui.border, bg = C.ui.base },
    TelescopePromptBorder = { fg = C.ui.border, bg = C.ui.base },
    TelescopePreviewBorder = { fg = C.ui.border, bg = C.ui.base },

    TelescopeSelectionCaret = { fg = C.ui.red },
    TelescopeMatching = { fg = C.ui.text_match },
    TelescopeSelection = { bg = C.ui.current_line },
    TelescopeMultiSelection = { fg = C.syntax.blue },
    TelescopeMultiIcon = { fg = C.ui.blue },

    TelescopeNormal = { link = "NormalFloat" },
    TelescopePreviewNormal = { link = "NormalFloat" },
    TelescopePromptNormal = { link = "NormalFloat" },
    TelescopeResultsNormal = { link = "NormalFloat" },
  }
end

return callback
