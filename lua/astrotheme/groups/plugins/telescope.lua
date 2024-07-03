---@type AstroThemeCallback
local function callback(colors, opts)
  local title = {
    fg = (opts.title_invert and colors.ui.float) or colors.ui.title,
    bg = (opts.title_invert and colors.ui.title)
      or (opts.inactive and colors.ui.base)
      or (opts.transparent and opts.float and colors.ui.base)
      or (opts.float and colors.ui.float)
      or (opts.transparent and colors.none)
      or colors.ui.base,
    bold = true,
  }

  local normal = {
    fg = colors.ui.text,
    bg = (opts.inactive and colors.ui.base)
      or (opts.transparent and opts.float and colors.ui.base)
      or (opts.float and colors.ui.float)
      or (opts.transparent and colors.none)
      or colors.ui.base,
  }

  local border = {
    fg = (opts.border and colors.ui.border)
      or (opts.inactive and colors.ui.base)
      or (opts.float and colors.ui.float)
      or colors.ui.base,
    bg = (opts.border and opts.inactive and colors.ui.base)
      or (opts.transparent and opts.float and colors.ui.base)
      or (opts.float and colors.ui.float)
      or (opts.transparent and colors.none)
      or colors.ui.base,
  }

  return {
    ----------------
    --- Title
    ----------------

    TelescopePromptTitle = {
      fg = (opts.title_invert and colors.ui.float) or colors.ui.title,
      bg = (opts.title_invert and colors.ui.title)
        or (opts.float and colors.ui.prompt)
        or (opts.transparent and colors.none)
        or colors.ui.base,
      bold = true,
    },
    TelescopeResultsTitle = title,
    TelescopePreviewTitle = title,

    -- TelescopeTitle = { link = "FloatTitle" },
    -- TelescopePromptTitle = { link = "TelescopeTitle" },
    -- TelescopeResultsTitle = { link = "TelescopeTitle" },
    -- TelescopePreviewTitle = { link = "TelescopeTitle" },

    ----------------
    --- Normal
    ----------------

    TelescopePromptNormal = {
      fg = colors.ui.text,
      bg = (opts.border and opts.inactive and colors.ui.base)
        or (opts.border and opts.float and colors.ui.base)
        or (opts.inactive and colors.ui.prompt)
        or (opts.float and colors.ui.prompt)
        or (opts.transparent and colors.none)
        or colors.ui.base,
    },
    TelescopeResultsNormal = normal,
    TelescopePreviewNormal = normal,

    -- TelescopeNormal = { link = "NormalFloat" },
    -- TelescopePromptNormal = { link = "TelescopeNormal" },
    -- TelescopeResultsNormal = { link = "TelescopeNormal" },
    -- TelescopePreviewNormal = { link = "TelescopeNormal" },

    ----------------
    --- Border
    ----------------

    TelescopePromptBorder = {
      fg = (opts.border and colors.ui.border)
        or (opts.inactive and colors.ui.base)
        or (opts.float and colors.ui.prompt)
        or colors.ui.base,
      bg = (opts.border and opts.inactive and colors.ui.base) or (opts.float and colors.ui.prompt) or colors.ui.prompt,
    },
    TelescopeResultsBorder = border,
    TelescopePreviewBorder = border,

    -- TelescopeBorder = { link = "FloatBorder" },
    -- TelescopePromptBorder = { link = "TelescopeBorder" },
    -- TelescopeResultsBorder = { link = "TelescopeBorder" },
    -- TelescopePreviewBorder = { link = "TelescopeBorder" },

    ----------------
    --- Other
    ----------------

    TelescopePromptPrefix = { fg = colors.ui.accent },
    TelescopeSelectionCaret = { fg = colors.ui.accent },
    TelescopeMatching = { fg = colors.ui.text_match, bold = true },
    -- TelescopeSelection = { bg = C.ui.current_line },
    TelescopeSelection = { link = "PmenuSel" },
    TelescopeMultiSelection = { fg = colors.syntax.blue },
    TelescopeMultiIcon = { fg = colors.ui.blue },
  }
end

return callback
