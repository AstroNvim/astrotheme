---@type AstroThemeCallback
local function callback(c)
  return {
    VimwikiLink = { fg = c.syntax.cyan, bg = c.none },
    VimwikiHeaderChar = { fg = c.ui.none_text, bg = c.none },
    VimwikiHR = { fg = c.syntax.yellow, bg = c.none },
    VimwikiList = { fg = c.syntax.orange, bg = c.none },
    VimwikiTag = { fg = c.syntax.orange, bg = c.none },
    VimwikiMarkers = { fg = c.ui.none_text, bg = c.none },
    VimwikiHeader1 = { fg = c.syntax.orange, bg = c.none, bold = true },
    VimwikiHeader2 = { fg = c.syntax.green, bg = c.none, bold = true },
    VimwikiHeader3 = { fg = c.syntax.blue, bg = c.none, bold = true },
    VimwikiHeader4 = { fg = c.syntax.cyan, bg = c.none, bold = true },
    VimwikiHeader5 = { fg = c.syntax.yellow, bg = c.none, bold = true },
    VimwikiHeader6 = { fg = c.syntax.purple, bg = c.none, bold = true },
  }
end

return callback
