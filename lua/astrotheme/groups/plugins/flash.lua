-- this is a test to see what i like
---@type AstroThemeCallback
local function callback(c)
  return {
    FlashBackdrop = { fg = c.syntax.mute },
    FlashLabel = { fg = c.ui.base, bg = c.ui.orange, bold = true },
  }
end

return callback
