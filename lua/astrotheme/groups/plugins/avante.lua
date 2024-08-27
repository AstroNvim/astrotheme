---@param c AstroThemePalette
return function(c)
  return {
    AvanteTitle = { fg = c.ui.green, bg = c.ui.base },
    AvanteReversedTitle = { fg = c.ui.base },
    AvanteSubtitle = { fg = c.ui.blue, bg = c.ui.base },
    AvanteReversedSubtitle = { fg = c.ui.base },
    AvanteThirdTitle = { fg = c.ui.yellow, bg = c.ui.base },
    AvanteReversedThirdTitle = { fg = c.ui.base },
    AvanteConflictCurrent = { bg = "#005500" },
    AvanteConflictIncoming = { bg = "#555500" },
  }
end
