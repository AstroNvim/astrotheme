local function callback(opts)
  return {
    NeoTreeDirectoryIcon = { fg = C.ui.blue },
    NeoTreeRootName = { fg = C.ui.text, bold = true },
    NeoTreeFileName = { fg = C.ui.text },
    NeoTreeFileIcon = { fg = C.ui.text },
    NeoTreeFileNameOpened = { fg = C.ui.green },
    NeoTreeFloatBorder = { fg = C.ui.border },
    NeoTreeFloatTitle = { fg = C.ui.title, bg = C.ui.tool },
    NeoTreeIndentMarker = { fg = C.ui.none_text },
    NeoTreeGitAdded = { fg = C.ui.green },
    NeoTreeGitConflict = { fg = C.ui.red },
    NeoTreeGitModified = { fg = C.ui.orange },
    NeoTreeGitUntracked = { fg = C.ui.yellow },
    NeoTreeTitleBar = { fg = C.ui.tool, bg = C.ui.border },
    NeoTreeNormal = {
      fg = C.ui.text,
      bg = (opts.neotree and C.ui.tool) or (opts.transparent and C.none) or C.ui.base,
    },
    NeoTreeNormalNC = {
      fg = C.ui.text,
      bg = (opts.neotree and C.ui.tool) or (opts.transparent and C.none) or C.ui.base,
    },
    NeoTreeSymbolicLinkTarget = { fg = C.ui.cyan },
    NeoTreeTabActive = {
      fg = C.ui.text_active,
      bg = opts.transparent and C.none or C.ui.tool,
      bold = true,
    },
    NeoTreeTabInactive = { fg = C.ui.text_inactive, bg = C.ui.tabline },
    NeoTreeTabSeparatorActive = { fg = C.ui.tool, bg = C.ui.tool },
    NeoTreeTabSeparatorInactive = { fg = C.ui.tabline, bg = C.ui.tabline },
    NeoTreeVertSplit = { fg = C.ui.split, bg = opts.transparent and C.none or C.ui.base },
    NeoTreeWinSeparator = { fg = C.ui.split, bg = opts.transparent and C.none or C.ui.base, bold = true },
  }
end

return callback
