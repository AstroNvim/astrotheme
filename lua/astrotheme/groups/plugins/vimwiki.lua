---@type AstroThemeCallback
local function callback(colors)
  return {
    VimwikiLink = { fg = colors.syntax.cyan, bg = colors.none },
    VimwikiHeaderChar = { fg = colors.ui.none_text, bg = colors.none },
    VimwikiHR = { fg = colors.syntax.yellow, bg = colors.none },
    VimwikiList = { fg = colors.syntax.orange, bg = colors.none },
    VimwikiTag = { fg = colors.syntax.orange, bg = colors.none },
    VimwikiMarkers = { fg = colors.ui.none_text, bg = colors.none },
    VimwikiHeader1 = { fg = colors.syntax.orange, bg = colors.none, bold = true },
    VimwikiHeader2 = { fg = colors.syntax.green, bg = colors.none, bold = true },
    VimwikiHeader3 = { fg = colors.syntax.blue, bg = colors.none, bold = true },
    VimwikiHeader4 = { fg = colors.syntax.cyan, bg = colors.none, bold = true },
    VimwikiHeader5 = { fg = colors.syntax.yellow, bg = colors.none, bold = true },
    VimwikiHeader6 = { fg = colors.syntax.purple, bg = colors.none, bold = true },
  }
end

return callback
