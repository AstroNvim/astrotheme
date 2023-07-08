local function callback()
  return {
    NvimTreeFolderIcon = { fg = C.syntax.blue },
    NvimTreeExecFile = { fg = C.syntax.green },
    NvimTreeOpenedFile = { fg = C.syntax.green },
    NvimTreeRootFolder = { fg = C.ui.base },
    NvimTreeEndOfBuffer = { fg = C.ui.base },
    NvimTreeNormal = { bg = C.ui.tabline },
    NvimTreeNormalNC = { bg = C.ui.tabline },
    NvimTreeVertSplit = { fg = C.ui.tabline, bg = C.ui.tabline },
    NvimTreeImageFile = { fg = C.syntax.purple },
    NvimTreeSymlink = { fg = C.syntax.cyan },
    NvimTreeSpecialFile = { fg = C.syntax.yellow },
    NvimTreeGitDeleted = { fg = C.syntax.red },
    NvimTreeGitMerge = { fg = C.syntax.orange },
    NvimTreeGitRenamed = { fg = C.syntax.purple },
    NvimTreeGitStaged = { fg = C.syntax.green },
    NvimTreeGitDirty = { fg = C.syntax.red },
    NvimTreeGitNew = { fg = C.syntax.yellow },
  }
end

return callback
