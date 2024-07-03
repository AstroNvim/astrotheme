---@type AstroThemeCallback
local function callback(c)
  return {
    NvimTreeFolderIcon = { fg = c.syntax.blue },
    NvimTreeExecFile = { fg = c.syntax.green },
    NvimTreeOpenedFile = { fg = c.syntax.green },
    NvimTreeRootFolder = { fg = c.ui.base },
    NvimTreeEndOfBuffer = { fg = c.ui.base },
    NvimTreeNormal = { bg = c.ui.tabline },
    NvimTreeNormalNC = { bg = c.ui.tabline },
    NvimTreeVertSplit = { fg = c.ui.tabline, bg = c.ui.tabline },
    NvimTreeImageFile = { fg = c.syntax.purple },
    NvimTreeSymlink = { fg = c.syntax.cyan },
    NvimTreeSpecialFile = { fg = c.syntax.yellow },
    NvimTreeGitDeleted = { fg = c.syntax.red },
    NvimTreeGitMerge = { fg = c.syntax.orange },
    NvimTreeGitRenamed = { fg = c.syntax.purple },
    NvimTreeGitStaged = { fg = c.syntax.green },
    NvimTreeGitDirty = { fg = c.syntax.red },
    NvimTreeGitNew = { fg = c.syntax.yellow },
  }
end

return callback
