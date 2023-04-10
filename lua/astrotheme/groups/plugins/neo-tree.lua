local function callback(opts)
  return {
    NeoTreeDirectoryIcon = { fg = C.blue },
    NeoTreeRootName = { fg = C.text, bold = true },
    NeoTreeFileName = { fg = C.text },
    NeoTreeFileIcon = { fg = C.text },
    NeoTreeFileNameOpened = { fg = C.green },
    NeoTreeIndentMarker = { fg = C.light_blue },
    NeoTreeGitAdded = { fg = C.green },
    NeoTreeGitConflict = { fg = C.red },
    NeoTreeGitModified = { fg = C.orange },
    NeoTreeGitUntracked = { fg = C.yellow },
    NeoTreeNormal = { fg = C.text, bg = opts.transparent and C.none or C.crust },
    NeoTreeNormalNC = {
      fg = C.text,
      bg = (opts.transparent and opts.inactive and C.base)
        or (opts.inactive and C.base)
        or (opts.transparent and C.none)
        or C.crust,
    },
    NeoTreeSymbolicLinkTarget = { fg = C.cyan },

    NeoTreeTabActive = { fg = C.text, bg = C.base, bold = true },
    NeoTreeTabInactive = { fg = C.subtext2, bg = C.overlay1 },
    NeoTreeTabSeparatorActive = { fg = C.text, bg = C.base },
    NeoTreeTabSeparatorInactive = { fg = C.text, bg = C.overlay1 },
    NeoTreeVertSplit = { fg = C.base, bg = C.crust },
    NeoTreeStatusLineNC = { fg = C.crust, bg = C.crust },
  }
end

return callback
