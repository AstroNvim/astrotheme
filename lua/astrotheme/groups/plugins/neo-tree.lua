---@type AstroThemeCallback
local function callback(colors, opts)
  return {
    NeoTreeDirectoryIcon = { fg = colors.ui.blue },
    NeoTreeRootName = { fg = colors.ui.text_active, bold = true },
    NeoTreeFileName = { fg = colors.ui.text },
    NeoTreeFileIcon = { fg = colors.ui.text },
    NeoTreeFileNameOpened = { fg = colors.ui.green },
    NeoTreeFloatBorder = { fg = colors.ui.float },
    NeoTreeFloatTitle = {
      fg = opts.title_invert and colors.ui.tool or colors.ui.title,
      bg = opts.title_invert and colors.ui.title or colors.ui.tool,
      bold = true,
    },
    NeoTreeIndentMarker = { fg = colors.ui.none_text },

    NeoTreeGitAdded = { fg = colors.ui.green },
    NeoTreeGitConflict = { fg = colors.ui.red },
    NeoTreeGitDeleted = { fg = colors.ui.text_inactive },
    NeoTreeGitIgnored = { fg = colors.ui.text },
    NeoTreeGitModified = { fg = colors.ui.orange },
    NeoTreeGitRenamed = { fg = colors.ui.orange },
    NeoTreeGitStaged = { fg = colors.ui.cyan },
    NeoTreeGitUntracked = { fg = colors.ui.yellow },
    NeoTreeGitUnstaged = { fg = colors.ui.yellow },

    NeoTreeTitleBar = {
      fg = opts.title_invert and colors.ui.tool or colors.ui.title,
      bg = (opts.title_invert and colors.ui.title)
        or (opts.neotree and colors.ui.tool)
        or (opts.transparent and colors.none)
        or colors.ui.base,
      bold = true,
    },
    NeoTreeNormal = {
      fg = colors.ui.text,
      bg = (opts.neotree and colors.ui.tool) or (opts.transparent and colors.none) or colors.ui.base,
    },
    NeoTreeNormalNC = {
      fg = colors.ui.text,
      bg = (opts.neotree and colors.ui.tool) or (opts.transparent and colors.none) or colors.ui.base,
    },
    NeoTreeSymbolicLinkTarget = { fg = colors.ui.cyan },
    NeoTreeTabActive = {
      fg = colors.ui.text_active,
      bg = opts.transparent and colors.none or colors.ui.tool,
      bold = true,
    },
    NeoTreeTabInactive = { fg = colors.ui.text_inactive, bg = colors.ui.tabline },
    NeoTreeTabSeparatorActive = { fg = colors.ui.tool, bg = colors.ui.tool },
    NeoTreeTabSeparatorInactive = { fg = colors.ui.tabline, bg = colors.ui.tabline },
    NeoTreeVertSplit = { fg = colors.ui.split, bg = opts.transparent and colors.none or colors.ui.base },
    NeoTreeWinSeparator = { fg = colors.ui.split, bg = opts.transparent and colors.none or colors.ui.base, bold = true },
    NeoTreeCursorLine = { link = "PmenuSel" },
  }
end

return callback
