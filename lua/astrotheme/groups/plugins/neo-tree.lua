local function callback(opts)
  return {
    NeoTreeDirectoryIcon = { fg = C.ui.blue },
    NeoTreeRootName = { fg = C.ui.text_active, bold = true },
    NeoTreeFileName = { fg = C.ui.text },
    NeoTreeFileIcon = { fg = C.ui.text },
    NeoTreeFileNameOpened = { fg = C.ui.green },
    NeoTreeFloatBorder = { fg = C.ui.float },
    NeoTreeFloatTitle = {
      fg = opts.title_invert and C.ui.tool or C.ui.title,
      bg = opts.title_invert and opts.title or C.ui.tool,
      bold = true,
    },
    NeoTreeIndentMarker = { fg = C.ui.none_text },

    NeoTreeGitAdded = { fg = C.ui.green },
    NeoTreeGitConflict = { fg = C.ui.red },
    NeoTreeGitDeleted = { fg = C.ui.text_inactive },
    NeoTreeGitIgnored = { fg = C.ui.text },
    NeoTreeGitModified = { fg = C.ui.orange },
    NeoTreeGitRenamed = { fg = C.ui.orange },
    NeoTreeGitStaged = { fg = C.ui.cyan },
    NeoTreeGitUntracked = { fg = C.ui.yellow },
    NeoTreeGitUnstaged = { fg = C.ui.yellow },

    NeoTreeTitleBar = {
      fg = opts.title_invert and C.ui.tool or C.ui.title,
      bg = (opts.title_invert and C.ui.title)
        or (opts.neotree and C.ui.tool)
        or (opts.transparent and C.none)
        or C.ui.base,
      bold = true,
    },
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
    NeoTreeCursorLine = { link = "PmenuSel" },
  }
end

return callback
