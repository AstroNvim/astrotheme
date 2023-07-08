local function callback()
  return {
    DashboardHeader = { fg = C.syntax.cyan },
    DashboardShortcut = { fg = C.syntax.yellow },
    DashboardFooter = { fg = C.syntax.cyan },
    DashboardCenter = { fg = C.syntax.blue },
  }
end

return callback
