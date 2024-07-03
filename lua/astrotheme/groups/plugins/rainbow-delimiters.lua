---@type AstroThemeCallback
local function callback(c)
  return {
    RainbowDelimiterRed = { fg = c.syntax.red },
    RainbowDelimiterYellow = { fg = c.syntax.yellow },
    RainbowDelimiterBlue = { fg = c.syntax.blue },
    RainbowDelimiterOrange = { fg = c.syntax.orange },
    RainbowDelimiterGreen = { fg = c.syntax.green },
    RainbowDelimiterViolet = { fg = c.syntax.purple },
    RainbowDelimiterCyan = { fg = c.syntax.cyan },
  }
end

return callback
