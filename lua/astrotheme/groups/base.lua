local function callback(opts)
  return {
    --------------------
    --- Normal
    --------------------
    Normal = { fg = C.syntax.text, bg = opts.transparent and C.none or C.ui.base },
    NormalNC = {
      fg = C.syntax.text,
      bg = (opts.transparent and opts.inactive and C.ui.inactive_base)
        or (opts.transparent and C.none)
        or (opts.inactive and C.ui.inactive_base)
        or C.ui.base,
    },

    --------------------
    --- Float
    --------------------
    FloatTitle = {
      fg = (opts.title_invert and C.ui.tool) or C.ui.title,
      bg = (opts.title_invert and C.ui.title)
        or (opts.inactive and C.ui.float)
        or (opts.transparent and opts.float and C.ui.base)
        or (opts.float and C.ui.float)
        or (opts.transparent and C.none)
        or C.ui.base,
      blend = vim.o.winblend or 0,
      bold = true,
    },
    FloatBorder = {
      fg = (opts.border and opts.float and C.ui.border)
        or (opts.transparent and opts.float and C.ui.base)
        or (opts.float and C.ui.float)
        or C.ui.base,
      bg = (opts.inactive and C.ui.float)
        or (opts.transparent and opts.float and C.ui.base)
        or (opts.float and C.ui.float)
        or (opts.transparent and C.none)
        or C.ui.base,
      blend = vim.o.winblend or 0,
    },
    NormalFloat = {
      fg = C.ui.text,
      bg = (opts.inactive and C.ui.float)
        or (opts.transparent and opts.float and C.ui.base)
        or (opts.float and C.ui.float)
        or (opts.transparent and C.none)
        or C.ui.base,
      blend = vim.o.winblend or 0,
    },

    --------------------
    --- Text
    --------------------
    Title = {
      fg = (opts.title_invert and C.ui.tool) or C.ui.title,
      bg = (opts.title_invert and C.ui.title) or C.ui.tool,
      blend = vim.o.winblend or 0,
      bold = true,
    },

    Italic = { italic = true },
    Bold = { bold = true },

    Conceal = { fg = C.ui.text_inactive, bg = C.none },
    SpecialKey = { fg = C.ui.text, bg = C.none },

    ----------------
    --- Tab
    ----------------
    TabLine = { fg = C.ui.text_inactive, bg = C.ui.tabline },
    TabLineSel = { fg = C.ui.text_active, bg = C.ui.base, bold = true, italic = true },
    TabLineFill = { fg = C.none, bg = C.ui.tabline },

    ----------------
    --- Winbar
    ----------------
    WinBar = { fg = C.ui.winbar, bg = C.none },
    WinBarNC = {
      fg = C.ui.text_inactive,
      bg = (opts.transparent and opts.inactive and C.ui.inactive_base)
        or (opts.transparent and C.none)
        or (opts.inactive and C.ui.inactive_base)
        or C.ui.base,
    },

    --------------------
    --- Status
    --------------------
    StatusLine = { fg = C.ui.text, bg = C.ui.statusline },
    StatusLineNC = { fg = C.ui.text_inactive, bg = C.none },
    StatusInactive = { fg = C.ui.tabline, bg = C.ui.text_inactive }, -- TODO: find better inactive color
    StatusNormal = { fg = C.ui.tabline, bg = C.ui.blue },
    StatusInsert = { fg = C.ui.tabline, bg = C.ui.green },
    StatusVisual = { fg = C.ui.tabline, bg = C.ui.purple },
    StatusReplace = { fg = C.ui.tabline, bg = C.ui.red },
    StatusCommand = { fg = C.ui.tabline, bg = C.ui.yellow },
    StatusTerminal = { link = "StatusInsert" },

    --------------------
    --- UI
    --------------------
    Cursor = { fg = C.ui.base, bg = C.ui.text },
    CursorIM = { link = "Cursor" },
    lCursor = { link = "Cursor" },

    CursorLineNr = { fg = C.ui.text_active, bg = C.none }, -- Active line number
    LineNr = { fg = C.ui.none_text, bg = C.none }, -- Line numbers

    WinSeparator = {
      fg = C.ui.split,
      bg = opts.transparent and C.none or C.ui.base,
      bold = false,
    },
    VertSplit = {
      fg = C.ui.split,
      bg = opts.transparent and C.none or C.ui.base,
    },

    Folded = { fg = C.ui.none_text, bg = C.none },
    FoldColumn = { fg = C.ui.none_text, bg = C.none },

    NonText = { fg = C.ui.none_text, bg = C.none },
    EndOfBuffer = { fg = C.ui.base, bg = C.none },
    SignColumn = { fg = C.none, bg = C.none },

    --------------------
    --- Diagnostics
    --------------------
    DiffAdd = { fg = C.ui.base, bg = C.syntax.green },
    DiffChange = { fg = C.ui.base, bg = C.syntax.yellow },
    DiffDelete = { fg = C.ui.base, bg = C.syntax.red },
    DiffText = { fg = C.ui.base, bg = C.syntax.yellow },
    DiffAdded = { fg = C.syntax.green },
    DiffRemoved = { fg = C.syntax.red },
    DiffChanged = { fg = C.syntax.blue },
    DiffOldFile = { fg = C.syntax.orange },
    DiffNewFile = { fg = C.syntax.green },
    DiffFile = { fg = C.syntax.blue },
    DiffLine = { fg = C.syntax.text }, -- NOTE: Find better color
    DiffIndexLine = { fg = C.syntax.cyan },

    ErrorMsg = { fg = C.syntax.red, bg = C.none },
    WarningMsg = { fg = C.ui.yellow, bg = C.none },
    Question = { fg = C.ui.purple, bg = C.none },

    --------------------
    --- Menu
    --------------------
    Pmenu = { fg = C.ui.text, bg = C.ui.float },
    -- TODO: move `menu_selection` -> `selection`
    PmenuSel = { bg = C.ui.menu_selection, bold = true, blend = 0 },
    PmenuSbar = { fg = C.none, bg = C.ui.float },
    PmenuThumb = { fg = C.none, bg = C.ui.scrollbar, blend = 0 },

    WildMenu = { fg = C.ui.base, bg = C.ui.accent },

    --------------------
    --- Search & Select
    --------------------
    Search = { fg = C.none, bg = C.ui.selection },
    IncSearch = { fg = C.ui.base, bg = C.ui.purple },
    Substitute = { fg = C.ui.base, bg = C.ui.red, bold = true },
    CurSearch = { link = "IncSearch" },
    Visual = { fg = C.none, bg = C.ui.selection },
    VisualNOS = { fg = C.ui.selection, bg = C.none },

    --------------------
    --- Highlights
    --------------------
    CursorColumn = { fg = C.none, bg = C.ui.current_line },
    ColorColumn = { fg = C.none, bg = C.ui.current_line }, -- NOTE: Find better color
    CursorLine = { fg = C.none, bg = opts.transparent and C.none or C.ui.current_line },
    MatchParen = { fg = C.ui.orange, bg = C.none, bold = true },

    --------------------
    --- Spell
    --------------------
    SpellBad = { undercurl = true },
    SpellCap = { undercurl = true },
    SpellLocal = { undercurl = true },
    SpellRare = { undercurl = true },

    ----------------
    --- Other
    ----------------
    Terminal = { fg = C.ui.text, bg = C.ui.base },
    Directory = { fg = C.ui.blue, bg = C.none },
    QuickFixLine = { fg = C.ui.base, bg = C.ui.yellow },
  }
end

return callback
