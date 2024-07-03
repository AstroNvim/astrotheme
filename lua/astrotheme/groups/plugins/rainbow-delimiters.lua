---@type AstroThemeCallback
local function callback(colors)
  return {
    RainbowDelimiterRed = { fg = colors.syntax.red },
    RainbowDelimiterYellow = { fg = colors.syntax.yellow },
    RainbowDelimiterBlue = { fg = colors.syntax.blue },
    RainbowDelimiterOrange = { fg = colors.syntax.orange },
    RainbowDelimiterGreen = { fg = colors.syntax.green },
    RainbowDelimiterViolet = { fg = colors.syntax.purple },
    RainbowDelimiterCyan = { fg = colors.syntax.cyan },
  }
end

return callback
