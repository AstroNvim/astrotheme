local function callback(opts)
  return {
    NeoTreeDirectoryIcon = { fg = C.blue },
    NeoTreeRootName = { fg = C.text, bold = true },
    NeoTreeFileName = { fg = C.text },
    NeoTreeFileIcon = { fg = C.text },
    NeoTreeFileNameOpened = { fg = C.green },
    NeoTreeIndentMarker = { fg = C.alt_blue },
    NeoTreeGitAdded = { fg = C.green },
    NeoTreeGitConflict = { fg = C.red },
    NeoTreeGitModified = { fg = C.orange },
    NeoTreeGitUntracked = { fg = C.yellow },
    NeoTreeNormal = { fg = C.text, bg = opts.transparent and C.none or C.mantle },
    NeoTreeNormalNC = {
      fg = C.text,
      bg = (opts.transparent and opts.inactive and C.base)
        or (opts.inactive and C.base)
        or (opts.transparent and C.none)
        or C.mantle,
    },
    NeoTreeSymbolicLinkTarget = { fg = C.cyan },
    NeoTreeTabActive = { fg = C.text, bg = C.mantle, bold = true },
    NeoTreeTabInactive = { fg = C.subtext1, bg = C.crust },
    NeoTreeTabSeparatorActive = { fg = C.mantle, bg = C.mantle },
    NeoTreeTabSeparatorInactive = { fg = C.crust, bg = C.crust },
    NeoTreeVertSplit = { fg = C.base, bg = C.mantle },
    NeoTreeStatusLineNC = { fg = C.mantle, bg = C.crust },
  }
end

return callback
