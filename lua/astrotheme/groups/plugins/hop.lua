---@type AstroThemeCallback
local function callback(colors)
  return {
    HopNextKey = { fg = colors.ui.red, bold = true },
    HopNextKey1 = { fg = colors.ui.cyan, bold = true },
    HopNextKey2 = { fg = colors.ui.blue },
    HopUnmatched = { fg = colors.syntax.mute },
  }
end

return callback
