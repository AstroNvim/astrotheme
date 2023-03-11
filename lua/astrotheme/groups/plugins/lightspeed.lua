local function callback()
  return {
    LightspeedLabel = { fg = C.dark_red, underline = true },
    LightspeedLabelOverlapped = { fg = C.blue, underline = true },
    LightspeedLabelDistant = { fg = C.dark_red, underline = true },
    LightspeedLabelDistantOverlapped = { fg = C.light_blue, underline = true },
    LightspeedShortcut = { fg = C.mantle, bg = C.dark_red, bold = true, underline = true },
    LightspeedShortcutOverlapped = { fg = C.mantle, bg = C.blue, bold = true, underline = true },
    LightspeedMaskedChar = { fg = C.light_green },
    LightspeedGreyWash = { fg = C.subtext1, bg = C.none },
    LightspeedUnlabeledMatch = { fg = C.surface2, bold = true },
    LightspeedOneCharMatch = { fg = C.green, bg = C.dark_red, bold = true },
    LightspeedUniqueChar = { fg = C.surface2, bold = true },
    LightspeedPendingOpArea = { fg = C.yellow },
  }
end

return callback
