---@type AstroThemeCallback
local function callback(c)
  local color = require "astrotheme.lib.color"
  return {
    MiniIconsAzure = { fg = color.new(c.ui.blue):lighten(35):tohex() },
    MiniIconsBlue = { fg = c.ui.blue },
    MiniIconsCyan = { fg = c.ui.cyan },
    MiniIconsGreen = { fg = c.ui.green },
    MiniIconsGrey = { fg = c.ui.text },
    MiniIconsOrange = { fg = c.ui.orange },
    MiniIconsPurple = { fg = c.ui.purple },
    MiniIconsRed = { fg = c.ui.red },
    MiniIconsYellow = { fg = c.ui.yellow },
  }
end

return callback
