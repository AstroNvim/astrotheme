---@type AstroThemeCallback
local function callback(c)
  return {
    SnacksDashboardHeader = { fg = c.syntax.cyan },
    SnacksDashboardFooter = { fg = c.syntax.cyan },
    SnacksDashboardSpecial = { fg = c.syntax.cyan },
    SnacksDashboardKey = { fg = c.syntax.yellow },
  }
end

return callback
