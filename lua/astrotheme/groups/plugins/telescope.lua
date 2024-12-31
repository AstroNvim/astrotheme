---@type AstroThemeCallback
local function callback(c, opts)
  local prompt_bg = (opts.border and opts.float and opts.inactive and c.ui.float)
    or (opts.border and opts.float and opts.transparent and c.ui.base)
    or (opts.border and opts.float and c.ui.float)
    or (opts.border and opts.inactive and c.ui.base)
    or (opts.border and opts.transparent and c.none)
    or (opts.border and c.ui.base)
    or c.ui.prompt

  return {
    ----------------
    --- Title
    ----------------

    TelescopePromptTitle = {
      fg = (opts.title_invert and c.ui.float) or c.ui.title,
      bg = (opts.title_invert and c.ui.title) or prompt_bg,
      bold = true,
    },
    TelescopeResultsTitle = { link = "FloatTitle" },
    TelescopePreviewTitle = { link = "FloatTitle" },

    -- TelescopeTitle = "FloatTitle",
    -- TelescopePromptTitle = "TelescopeTitle",
    -- TelescopeResultsTitle = "TelescopeTitle",
    -- TelescopePreviewTitle = "TelescopeTitle",

    ----------------
    --- Normal
    ----------------

    TelescopePromptNormal = {
      fg = c.ui.text,
      bg = prompt_bg,
    },
    TelescopeResultsNormal = { link = "NormalFloat" },
    TelescopePreviewNormal = { link = "NormalFloat" },

    -- TelescopeNormal = "NormalFloat",
    -- TelescopePromptNormal = "TelescopeNormal",
    -- TelescopeResultsNormal = "TelescopeNormal",
    -- TelescopePreviewNormal = "TelescopeNormal",

    ----------------
    --- Border
    ----------------

    TelescopePromptBorder = {
      fg = (opts.border and opts.float and c.ui.border)
        or (opts.border and opts.inactive and c.ui.border)
        or (opts.border and opts.transparent and c.ui.base)
        or (opts.border and c.ui.border)
        or c.ui.prompt,
      bg = prompt_bg,
    },
    -- TelescopePromptBorder = border,
    TelescopeResultsBorder = { link = "FloatBorder" },
    TelescopePreviewBorder = { link = "FloatBorder" },

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
