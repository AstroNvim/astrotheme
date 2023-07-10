local function callback()
  return {
    VimwikiLink = { fg = C.syntax.cyan, bg = C.none },
    VimwikiHeaderChar = { fg = C.syntax.none_text, bg = C.none },
    VimwikiHR = { fg = C.syntax.yellow, bg = C.none },
    VimwikiList = { fg = C.syntax.orange, bg = C.none },
    VimwikiTag = { fg = C.syntax.orange, bg = C.none },
    VimwikiMarkers = { fg = C.syntax.none_text, bg = C.none },
    VimwikiHeader1 = { fg = C.syntax.orange, bg = C.none, bold = true },
    VimwikiHeader2 = { fg = C.syntax.green, bg = C.none, bold = true },
    VimwikiHeader3 = { fg = C.syntax.blue, bg = C.none, bold = true },
    VimwikiHeader4 = { fg = C.syntax.cyan, bg = C.none, bold = true },
    VimwikiHeader5 = { fg = C.syntax.yellow, bg = C.none, bold = true },
    VimwikiHeader6 = { fg = C.syntax.purple, bg = C.none, bold = true },
  }
end

return callback
