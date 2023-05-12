local function callback()
  return {
    LightspeedLabel = { fg = C.dark_red, underline = true },
    LightspeedLabelOverlapped = { fg = C.blue, underline = true },
    LightspeedLabelDistant = { fg = C.dark_red, underline = true },
    LightspeedLabelDistantOverlapped = { fg = C.light_blue, underline = true },
    LightspeedShortcut = { fg = C.mantle, bg = C.dark_red, bold = true, underline = true },
    LightspeedShortcutOverlapped = { fg = C.mantle, bg = C.blue, bold = true, underline = true },
    LightspeedMaskedChar = { fg = C.light_green },
    LightspeedUnlabeledMatch = { fg = C.surface2, bold = true },
    LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
    LightspeedGreyWash = { link = "Comment" },
    LightspeedOneCharMatch = { link = "LightspeedShortcut" },
    LightspeedPendingOpArea = { link = "IncSearch" },
    LightspeedCursor = { link = "Cursor" },
  }
end

return callback
