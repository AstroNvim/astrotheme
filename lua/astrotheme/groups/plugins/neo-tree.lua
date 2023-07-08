local function callback(opts)
  return {
    NeoTreeDirectoryIcon = { fg = C.syntax.blue },
    NeoTreeRootName = { fg = C.syntax.text, bold = true },
    NeoTreeFileName = { fg = C.syntax.text },
    NeoTreeFileIcon = { fg = C.syntax.text },
    NeoTreeFileNameOpened = { fg = C.syntax.green },
    NeoTreeIndentMarker = { fg = C.ui.blue },
    NeoTreeGitAdded = { fg = C.syntax.green },
    NeoTreeGitConflict = { fg = C.syntax.red },
    NeoTreeGitModified = { fg = C.syntax.orange },
    NeoTreeGitUntracked = { fg = C.syntax.yellow },
    NeoTreeTitleBar = { fg = C.syntax.text, bg = C.ui.tool },
    NeoTreeNormal = { fg = C.syntax.text, bg = opts.transparent and C.none or C.ui.tool },
    NeoTreeNormalNC = {
      fg = C.syntax.text,
      bg = (opts.transparent and opts.inactive and C.ui.base)
        or (opts.inactive and C.ui.base)
        or (opts.transparent and C.none)
        or C.ui.tool,
    },
    NeoTreeSymbolicLinkTarget = { fg = C.syntax.cyan },
    NeoTreeTabActive = { fg = C.syntax.text, bg = C.ui.tool, bold = true },
    NeoTreeTabInactive = { fg = C.syntax.subtext1, bg = C.ui.tabline },
    NeoTreeTabSeparatorActive = { fg = C.ui.tool, bg = C.ui.tool },
    NeoTreeTabSeparatorInactive = { fg = C.ui.tabline, bg = C.ui.tabline },
    NeoTreeVertSplit = { fg = C.ui.base, bg = C.ui.tool },
    NeoTreeStatusLineNC = { fg = C.ui.tool, bg = C.ui.tabline },
  }
end

return callback
