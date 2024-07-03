---@type AstroThemeCallback
local function callback(colors)
  return {
    TSRainbowRed = { fg = colors.syntax.red },
    TSRainbowYellow = { fg = colors.syntax.yellow },
    TSRainbowBlue = { fg = colors.syntax.blue },
    TSRainbowOrange = { fg = colors.syntax.orange },
    TSRainbowGreen = { fg = colors.syntax.green },
    TSRainbowViolet = { fg = colors.syntax.purple },
    TSRainbowCyan = { fg = colors.syntax.cyan },
  }
end

return callback
