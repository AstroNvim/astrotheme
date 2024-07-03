---@type AstroThemeCallback
local function callback(colors)
  return {
    MiniStarterItem = { fg = colors.ui.text },
    MiniStarterQuery = { fg = colors.ui.green, bold = true },
    MiniStarterHeader = { fg = colors.ui.accent, bg = colors.none },
    MiniStarterFooter = { fg = colors.ui.accent, bg = colors.none },
    MiniStarterCurrent = { fg = colors.ui.text_active, underline = true, bold = true },
    MiniStarterSection = { fg = colors.ui.accent, bold = true },
    MiniStarterInactive = { fg = colors.ui.text_inactive },
    MiniStarterItemBullet = { fg = colors.ui.accent },
    MiniStarterItemPrefix = { fg = colors.ui.yellow },
  }
end

return callback
