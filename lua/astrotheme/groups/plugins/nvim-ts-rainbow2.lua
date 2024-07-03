---@type AstroThemeCallback
local function callback(c)
  return {
    TSRainbowRed = { fg = c.syntax.red },
    TSRainbowYellow = { fg = c.syntax.yellow },
    TSRainbowBlue = { fg = c.syntax.blue },
    TSRainbowOrange = { fg = c.syntax.orange },
    TSRainbowGreen = { fg = c.syntax.green },
    TSRainbowViolet = { fg = c.syntax.purple },
    TSRainbowCyan = { fg = c.syntax.cyan },
  }
end

return callback
