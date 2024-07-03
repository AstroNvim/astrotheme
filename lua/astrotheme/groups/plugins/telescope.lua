---@type AstroThemeCallback
local function callback(c, opts)
  local title = {
    fg = (opts.title_invert and c.ui.float) or c.ui.title,
    bg = (opts.title_invert and c.ui.title)
      or (opts.inactive and c.ui.base)
      or (opts.transparent and opts.float and c.ui.base)
      or (opts.float and c.ui.float)
      or (opts.transparent and c.none)
      or c.ui.base,
    bold = true,
  }

  local normal = {
    fg = c.ui.text,
    bg = (opts.inactive and c.ui.base)
      or (opts.transparent and opts.float and c.ui.base)
      or (opts.float and c.ui.float)
      or (opts.transparent and c.none)
      or c.ui.base,
  }

  local border = {
    fg = (opts.border and c.ui.border) or (opts.inactive and c.ui.base) or (opts.float and c.ui.float) or c.ui.base,
    bg = (opts.border and opts.inactive and c.ui.base)
      or (opts.transparent and opts.float and c.ui.base)
      or (opts.float and c.ui.float)
      or (opts.transparent and c.none)
      or c.ui.base,
  }

  return {
    ----------------
    --- Title
    ----------------

    TelescopePromptTitle = {
      fg = (opts.title_invert and c.ui.float) or c.ui.title,
      bg = (opts.title_invert and c.ui.title)
        or (opts.float and c.ui.prompt)
        or (opts.transparent and c.none)
        or c.ui.base,
      bold = true,
    },
    TelescopeResultsTitle = title,
    TelescopePreviewTitle = title,

    -- TelescopeTitle = "FloatTitle",
    -- TelescopePromptTitle = "TelescopeTitle",
    -- TelescopeResultsTitle = "TelescopeTitle",
    -- TelescopePreviewTitle = "TelescopeTitle",

    ----------------
    --- Normal
    ----------------

    TelescopePromptNormal = {
      fg = c.ui.text,
      bg = (opts.border and opts.inactive and c.ui.base)
        or (opts.border and opts.float and c.ui.base)
        or (opts.inactive and c.ui.prompt)
        or (opts.float and c.ui.prompt)
        or (opts.transparent and c.none)
        or c.ui.base,
    },
    TelescopeResultsNormal = normal,
    TelescopePreviewNormal = normal,

    -- TelescopeNormal = "NormalFloat",
    -- TelescopePromptNormal = "TelescopeNormal",
    -- TelescopeResultsNormal = "TelescopeNormal",
    -- TelescopePreviewNormal = "TelescopeNormal",

    ----------------
    --- Border
    ----------------

    TelescopePromptBorder = {
      fg = (opts.border and c.ui.border) or (opts.inactive and c.ui.base) or (opts.float and c.ui.prompt) or c.ui.base,
      bg = (opts.border and opts.inactive and c.ui.base) or (opts.float and c.ui.prompt) or c.ui.prompt,
    },
    TelescopeResultsBorder = border,
    TelescopePreviewBorder = border,

    -- TelescopeBorder = "FloatBorder",
    -- TelescopePromptBorder = "TelescopeBorder",
    -- TelescopeResultsBorder = "TelescopeBorder",
    -- TelescopePreviewBorder = "TelescopeBorder",

    ----------------
    --- Other
    ----------------

    TelescopePromptPrefix = { fg = c.ui.accent },
    TelescopeSelectionCaret = { fg = c.ui.accent },
    TelescopeMatching = { fg = c.ui.text_match, bold = true },
    -- TelescopeSelection = { bg = C.ui.current_line },
    TelescopeSelection = "PmenuSel",
    TelescopeMultiSelection = { fg = c.syntax.blue },
    TelescopeMultiIcon = { fg = c.ui.blue },
  }
end

return callback
