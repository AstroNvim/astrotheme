local function callback()
  return {
    MiniStarterItem = { fg = C.ui.text },
    MiniStarterQuery = { fg = C.ui.green, bold = true },
    MiniStarterHeader = { fg = C.ui.accent, bg = C.none },
    MiniStarterFooter = { fg = C.ui.accent, bg = C.none },
    MiniStarterCurrent = { fg = C.ui.text_active, underline = true, bold = true },
    MiniStarterSection = { fg = C.ui.accent, bold = true },
    MiniStarterInactive = { fg = C.ui.text_inactive },
    MiniStarterItemBullet = { fg = C.ui.accent },
    MiniStarterItemPrefix = { fg = C.ui.yellow },
  }
end

return callback
