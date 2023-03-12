local function callback()
  return {
    NvimTreeFolderIcon = { fg = C.blue },
    NvimTreeExecFile = { fg = C.green },
    NvimTreeOpenedFile = { fg = C.green },
    NvimTreeRootFolder = { fg = C.base },
    NvimTreeEndOfBuffer = { fg = C.base },
    NvimTreeNormal = { bg = C.crust },
    NvimTreeNormalNC = { bg = C.crust },
    NvimTreeVertSplit = { fg = C.crust, bg = C.crust },
    NvimTreeImageFile = { fg = C.purple },
    NvimTreeSymlink = { fg = C.cyan },
    NvimTreeSpecialFile = { fg = C.yellow },
    NvimTreeGitDeleted = { fg = C.red },
    NvimTreeGitMerge = { fg = C.orange },
    NvimTreeGitRenamed = { fg = C.purple },
    NvimTreeGitStaged = { fg = C.green },
    NvimTreeGitDirty = { fg = C.red },
    NvimTreeGitNew = { fg = C.yellow },
  }
end

return callback
