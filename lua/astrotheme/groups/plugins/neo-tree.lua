local function callback(opts)
  return {
    NeoTreeDirectoryIcon = { fg = C.ui.blue },
    NeoTreeRootName = { fg = C.syntax.text, bold = true },
    NeoTreeFileName = { fg = C.syntax.text },
    NeoTreeFileIcon = { fg = C.syntax.text },
    NeoTreeFileNameOpened = { fg = C.ui.green },
    NeoTreeFloatBorder = { fg = C.ui.border },
    NeoTreeFloatTitle = { fg = C.ui.title, bg = C.ui.tool },
    NeoTreeIndentMarker = { fg = C.ui.blue },
    NeoTreeGitAdded = { fg = C.ui.green },
    NeoTreeGitConflict = { fg = C.ui.red },
    NeoTreeGitModified = { fg = C.ui.orange },
    NeoTreeGitUntracked = { fg = C.ui.yellow },
    NeoTreeTitleBar = { fg = C.ui.tool, bg = C.ui.border },
    NeoTreeNormal = {
      fg = C.syntax.text,
      bg = (opts.neotree and C.ui.tool) or (opts.transparent and C.none) or C.ui.base,
    },
    NeoTreeNormalNC = {
      fg = C.syntax.text,
      bg = (opts.transparent and C.none) or C.ui.tool,
    },
    NeoTreeSymbolicLinkTarget = { fg = C.syntax.cyan },
    NeoTreeTabActive = {
      fg = C.syntax.text,
      bg = opts.transparent and C.none or C.ui.tool,
      bold = true,
    },
    NeoTreeTabInactive = { fg = C.syntax.subtext1, bg = C.ui.tabline },
    NeoTreeTabSeparatorActive = { fg = C.ui.tool, bg = C.ui.tool },
    NeoTreeTabSeparatorInactive = { fg = C.ui.tabline, bg = C.ui.tabline },
    NeoTreeVertSplit = { fg = C.ui.split, bg = opts.transparent and C.none or C.ui.base },
    NeoTreeWinSeparator = { fg = C.ui.split, bg = opts.transparent and C.none or C.ui.base, bold = true },
    NeoTreeStatusLineNC = { fg = C.ui.text, bg = C.ui.statusline },
  }
end

return callback
