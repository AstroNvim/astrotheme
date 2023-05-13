local function callback()
  return {
    LightspeedLabel = { fg = C.alt_red, underline = true },
    LightspeedLabelOverlapped = { fg = C.blue, underline = true },
    LightspeedLabelDistant = { fg = C.alt_red, underline = true },
    LightspeedLabelDistantOverlapped = { fg = C.alt_blue, underline = true },
    LightspeedShortcut = { fg = C.mantle, bg = C.alt_red, bold = true, underline = true },
    LightspeedShortcutOverlapped = { fg = C.mantle, bg = C.blue, bold = true, underline = true },
    LightspeedMaskedChar = { fg = C.alt_green },
    LightspeedUnlabeledMatch = { fg = C.surface2, bold = true },
    LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
    LightspeedGreyWash = { link = "Comment" },
    LightspeedOneCharMatch = { link = "LightspeedShortcut" },
    LightspeedPendingOpArea = { link = "IncSearch" },
    LightspeedCursor = { link = "Cursor" },
  }
end

return callback
