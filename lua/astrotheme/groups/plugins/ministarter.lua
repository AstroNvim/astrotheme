---@type AstroThemeCallback
local function callback(c)
  return {
    MiniStarterItem = { fg = c.ui.text },
    MiniStarterQuery = { fg = c.ui.green, bold = true },
    MiniStarterHeader = { fg = c.ui.accent, bg = c.none },
    MiniStarterFooter = { fg = c.ui.accent, bg = c.none },
    MiniStarterCurrent = { fg = c.ui.text_active, underline = true, bold = true },
    MiniStarterSection = { fg = c.ui.accent, bold = true },
    MiniStarterInactive = { fg = c.ui.text_inactive },
    MiniStarterItemBullet = { fg = c.ui.accent },
    MiniStarterItemPrefix = { fg = c.ui.yellow },
  }
end

return callback
