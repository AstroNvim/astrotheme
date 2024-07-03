---@type AstroThemeCallback
local function callback(colors)
  return {
    NvimTreeFolderIcon = { fg = colors.syntax.blue },
    NvimTreeExecFile = { fg = colors.syntax.green },
    NvimTreeOpenedFile = { fg = colors.syntax.green },
    NvimTreeRootFolder = { fg = colors.ui.base },
    NvimTreeEndOfBuffer = { fg = colors.ui.base },
    NvimTreeNormal = { bg = colors.ui.tabline },
    NvimTreeNormalNC = { bg = colors.ui.tabline },
    NvimTreeVertSplit = { fg = colors.ui.tabline, bg = colors.ui.tabline },
    NvimTreeImageFile = { fg = colors.syntax.purple },
    NvimTreeSymlink = { fg = colors.syntax.cyan },
    NvimTreeSpecialFile = { fg = colors.syntax.yellow },
    NvimTreeGitDeleted = { fg = colors.syntax.red },
    NvimTreeGitMerge = { fg = colors.syntax.orange },
    NvimTreeGitRenamed = { fg = colors.syntax.purple },
    NvimTreeGitStaged = { fg = colors.syntax.green },
    NvimTreeGitDirty = { fg = colors.syntax.red },
    NvimTreeGitNew = { fg = colors.syntax.yellow },
  }
end

return callback
