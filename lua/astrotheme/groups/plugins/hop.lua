---@type AstroThemeCallback
local function callback(c)
  return {
    HopNextKey = { fg = c.ui.red, bold = true },
    HopNextKey1 = { fg = c.ui.cyan, bold = true },
    HopNextKey2 = { fg = c.ui.blue },
    HopUnmatched = { fg = c.syntax.mute },
  }
end

return callback
