---@type AstroThemeCallback
local function callback(colors)
  return {
    DashboardHeader = { fg = colors.syntax.cyan },
    DashboardShortcut = { fg = colors.syntax.yellow },
    DashboardFooter = { fg = colors.syntax.cyan },
    DashboardCenter = { fg = colors.syntax.blue },
  }
end

return callback
