local function callback()
  return {
    ----------------
    --- Title
    ----------------
    TelescopeResultsTitle = { link = "FloatTitle" },
    TelescopePromptTitle = { link = "FloatTitle" },
    TelescopePreviewTitle = { link = "FloatTitle" },

    ----------------
    --- Border
    ----------------
    TelescopeResultsBorder = { link = "FloatBorder" },
    TelescopePromptBorder = { link = "FloatBorder" },
    TelescopePreviewBorder = { link = "FloatBorder" },

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
