---@type AstroThemeCallback
local function callback(colors)
  return {
    LightspeedLabel = { fg = colors.ui.red, underline = true },
    LightspeedLabelOverlapped = { fg = colors.syntax.blue, underline = true },
    LightspeedLabelDistant = { fg = colors.ui.red, underline = true },
    LightspeedLabelDistantOverlapped = { fg = colors.ui.blue, underline = true },
    LightspeedShortcut = { fg = colors.ui.tool, bg = colors.ui.red, bold = true, underline = true },
    LightspeedShortcutOverlapped = { fg = colors.ui.tool, bg = colors.syntax.blue, bold = true, underline = true },
    LightspeedMaskedChar = { fg = colors.ui.green },
    LightspeedUnlabeledMatch = { fg = colors.syntax.text, bold = true },
    LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
    LightspeedGreyWash = { link = "Comment" },
    LightspeedOneCharMatch = { link = "LightspeedShortcut" },
    LightspeedPendingOpArea = { link = "IncSearch" },
    LightspeedCursor = { link = "Cursor" },
  }
end

return callback
