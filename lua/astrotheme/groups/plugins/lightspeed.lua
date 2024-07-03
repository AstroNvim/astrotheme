---@type AstroThemeCallback
local function callback(c)
  return {
    LightspeedLabel = { fg = c.ui.red, underline = true },
    LightspeedLabelOverlapped = { fg = c.syntax.blue, underline = true },
    LightspeedLabelDistant = { fg = c.ui.red, underline = true },
    LightspeedLabelDistantOverlapped = { fg = c.ui.blue, underline = true },
    LightspeedShortcut = { fg = c.ui.tool, bg = c.ui.red, bold = true, underline = true },
    LightspeedShortcutOverlapped = { fg = c.ui.tool, bg = c.syntax.blue, bold = true, underline = true },
    LightspeedMaskedChar = { fg = c.ui.green },
    LightspeedUnlabeledMatch = { fg = c.syntax.text, bold = true },
    LightspeedUniqueChar = "LightspeedUnlabeledMatch",
    LightspeedGreyWash = "Comment",
    LightspeedOneCharMatch = "LightspeedShortcut",
    LightspeedPendingOpArea = "IncSearch",
    LightspeedCursor = "Cursor",
  }
end

return callback
