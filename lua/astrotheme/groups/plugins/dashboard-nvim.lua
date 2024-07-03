---@type AstroThemeCallback
local function callback(c)
  return {
    DashboardHeader = { fg = c.syntax.cyan },
    DashboardShortcut = { fg = c.syntax.yellow },
    DashboardFooter = { fg = c.syntax.cyan },
    DashboardCenter = { fg = c.syntax.blue },
  }
end

return callback
