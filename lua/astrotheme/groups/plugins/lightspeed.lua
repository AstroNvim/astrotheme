local function callback()
  return {
    LightspeedLabel = { fg = C.ui.red, underline = true },
    LightspeedLabelOverlapped = { fg = C.syntax.blue, underline = true },
    LightspeedLabelDistant = { fg = C.ui.red, underline = true },
    LightspeedLabelDistantOverlapped = { fg = C.ui.blue, underline = true },
    LightspeedShortcut = { fg = C.ui.tool, bg = C.ui.red, bold = true, underline = true },
    LightspeedShortcutOverlapped = { fg = C.ui.tool, bg = C.syntax.blue, bold = true, underline = true },
    LightspeedMaskedChar = { fg = C.ui.green },
    LightspeedUnlabeledMatch = { fg = C.syntax.text, bold = true },
    LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
    LightspeedGreyWash = { link = "Comment" },
    LightspeedOneCharMatch = { link = "LightspeedShortcut" },
    LightspeedPendingOpArea = { link = "IncSearch" },
    LightspeedCursor = { link = "Cursor" },
  }
end

return callback
