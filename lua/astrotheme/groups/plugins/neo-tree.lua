---@type AstroThemeCallback
local function callback(c, opts)
  return {
    NeoTreeDirectoryIcon = { fg = c.ui.blue },
    NeoTreeRootName = { fg = c.ui.text_active, bold = true },
    NeoTreeFileName = { fg = c.ui.text },
    NeoTreeFileIcon = { fg = c.ui.text },
    NeoTreeFileNameOpened = { fg = c.ui.green },
    NeoTreeFloatBorder = { fg = c.ui.float },
    NeoTreeFloatTitle = {
      fg = opts.title_invert and c.ui.tool or c.ui.title,
      bg = opts.title_invert and c.ui.title or c.ui.tool,
      bold = true,
    },
    NeoTreeIndentMarker = { fg = c.ui.none_text },

    NeoTreeGitAdded = { fg = c.ui.green },
    NeoTreeGitConflict = { fg = c.ui.red },
    NeoTreeGitDeleted = { fg = c.ui.text_inactive },
    NeoTreeGitIgnored = { fg = c.ui.text },
    NeoTreeGitModified = { fg = c.ui.orange },
    NeoTreeGitRenamed = { fg = c.ui.orange },
    NeoTreeGitStaged = { fg = c.ui.cyan },
    NeoTreeGitUntracked = { fg = c.ui.yellow },
    NeoTreeGitUnstaged = { fg = c.ui.yellow },

    NeoTreeTitleBar = {
      fg = opts.title_invert and c.ui.tool or c.ui.title,
      bg = (opts.title_invert and c.ui.title)
        or (opts.neotree and c.ui.tool)
        or (opts.transparent and c.none)
        or c.ui.base,
      bold = true,
    },
    NeoTreeNormal = {
      fg = c.ui.text,
      bg = (opts.neotree and c.ui.tool) or (opts.transparent and c.none) or c.ui.base,
    },
    NeoTreeNormalNC = {
      fg = c.ui.text,
      bg = (opts.neotree and c.ui.tool) or (opts.transparent and c.none) or c.ui.base,
    },
    NeoTreeSymbolicLinkTarget = { fg = c.ui.cyan },
    NeoTreeTabActive = {
      fg = c.ui.text_active,
      bg = opts.transparent and c.none or c.ui.tool,
      bold = true,
    },
    NeoTreeTabInactive = { fg = c.ui.text_inactive, bg = c.ui.tabline },
    NeoTreeTabSeparatorActive = { fg = c.ui.tool, bg = c.ui.tool },
    NeoTreeTabSeparatorInactive = { fg = c.ui.tabline, bg = c.ui.tabline },
    NeoTreeVertSplit = { fg = c.ui.split, bg = opts.transparent and c.none or c.ui.base },
    NeoTreeWinSeparator = { fg = c.ui.split, bg = opts.transparent and c.none or c.ui.base, bold = true },
    NeoTreeCursorLine = "PmenuSel",
  }
end

return callback
