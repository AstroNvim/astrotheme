local function callback(opts)
  local title = {
    fg = (opts.title_invert and C.ui.float) or C.ui.title,
    bg = (opts.title_invert and C.ui.title)
      or (opts.inactive and C.ui.base)
      or (opts.transparent and opts.float and C.ui.base)
      or (opts.float and C.ui.float)
      or (opts.transparent and C.none)
      or C.ui.base,
    blend = vim.o.winblend or 0,
    bold = true,
  }

  local normal = {
    fg = C.ui.text,
    bg = (opts.inactive and C.ui.base)
      or (opts.transparent and opts.float and C.ui.base)
      or (opts.float and C.ui.float)
      or (opts.transparent and C.none)
      or C.ui.base,
    blend = vim.o.winblend or 0,
  }

  local border = {
    fg = (opts.border and C.ui.border) or (opts.inactive and C.ui.base) or (opts.float and C.ui.float) or C.ui.base,
    bg = (opts.border and opts.inactive and C.ui.base)
      or (opts.transparent and opts.float and C.ui.base)
      or (opts.float and C.ui.float)
      or (opts.transparent and C.none)
      or C.ui.base,
    blend = vim.o.winblend or 0,
  }

  return {
    ----------------
    --- Title
    ----------------

    TelescopePromptTitle = {
      fg = (opts.title_invert and C.ui.float) or C.ui.title,
      bg = (opts.title_invert and C.ui.title)
        or (opts.float and C.ui.prompt)
        or (opts.transparent and C.none)
        or C.ui.base,
      blend = vim.o.winblend or 0,
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
      fg = C.ui.text,
      bg = (opts.border and opts.inactive and C.ui.base)
        or (opts.border and opts.float and C.ui.base)
        or (opts.inactive and C.ui.prompt)
        or (opts.float and C.ui.prompt)
        or (opts.transparent and C.none)
        or C.ui.base,
      blend = vim.o.winblend or 0,
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
      fg = (opts.border and C.ui.border) or (opts.inactive and C.ui.base) or (opts.float and C.ui.prompt) or C.ui.base,
      bg = (opts.border and opts.inactive and C.ui.base) or (opts.float and C.ui.prompt) or C.ui.prompt,
      blend = vim.o.winblend or 0,
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

    TelescopePromptPrefix = { fg = C.ui.accent },
    TelescopeSelectionCaret = { fg = C.ui.accent },
    TelescopeMatching = { fg = C.ui.text_match, bold = true },
    -- TelescopeSelection = { bg = C.ui.current_line },
    TelescopeSelection = { link = "PmenuSel" },
    TelescopeMultiSelection = { fg = C.syntax.blue },
    TelescopeMultiIcon = { fg = C.ui.blue },
  }
end

return callback
