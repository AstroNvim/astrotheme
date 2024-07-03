-- this is a test to see what i like
---@type AstroThemeCallback
local function callback(colors)
  return {
    FlashBackdrop = { fg = colors.syntax.mute },
    FlashLabel = { fg = colors.ui.base, bg = colors.ui.orange, bold = true },
  }
end

return callback()
