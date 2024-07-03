---@type AstroThemeCallback
local function callback(colors, opts)
  return {
    --------------------
    --- Normal
    --------------------
    Normal = { fg = colors.syntax.text, bg = opts.transparent and colors.none or colors.ui.base },
    NormalNC = {
      fg = colors.syntax.text,
      bg = (opts.transparent and opts.inactive and colors.ui.inactive_base)
        or (opts.transparent and colors.none)
        or (opts.inactive and colors.ui.inactive_base)
        or colors.ui.base,
    },

    --------------------
    --- Float
    --------------------
    FloatTitle = {
      fg = (opts.title_invert and colors.ui.tool) or colors.ui.title,
      bg = (opts.title_invert and colors.ui.title)
        or (opts.inactive and colors.ui.float)
        or (opts.transparent and opts.float and colors.ui.base)
        or (opts.float and colors.ui.float)
        or (opts.transparent and colors.none)
        or colors.ui.base,
      bold = true,
    },
    FloatBorder = {
      fg = (opts.border and opts.float and colors.ui.border)
        or (opts.transparent and opts.float and colors.ui.base)
        or (opts.float and colors.ui.float)
        or colors.ui.base,
      bg = (opts.inactive and colors.ui.float)
        or (opts.transparent and opts.float and colors.ui.base)
        or (opts.float and colors.ui.float)
        or (opts.transparent and colors.none)
        or colors.ui.base,
    },
    NormalFloat = {
      fg = colors.ui.text,
      bg = (opts.inactive and colors.ui.float)
        or (opts.transparent and opts.float and colors.ui.base)
        or (opts.float and colors.ui.float)
        or (opts.transparent and colors.none)
        or colors.ui.base,
    },

    --------------------
    --- Text
    --------------------
    Title = {
      fg = (opts.title_invert and colors.ui.tool) or colors.ui.title,
      bg = (opts.title_invert and colors.ui.title) or colors.ui.tool,
      bold = true,
    },

    Italic = { italic = true },
    Bold = { bold = true },

    Conceal = { fg = colors.ui.text_inactive, bg = colors.none },
    SpecialKey = { fg = colors.ui.text, bg = colors.none },

    ----------------
    --- Tab
    ----------------
    TabLine = { fg = colors.ui.text_inactive, bg = colors.ui.tabline },
    TabLineSel = { fg = colors.ui.text_active, bg = colors.ui.base, bold = true, italic = true },
    TabLineFill = { fg = colors.none, bg = colors.ui.tabline },

    ----------------
    --- Winbar
    ----------------
    WinBar = { fg = colors.ui.winbar, bg = colors.none },
    WinBarNC = {
      fg = colors.ui.text_inactive,
      bg = (opts.transparent and opts.inactive and colors.ui.inactive_base)
        or (opts.transparent and colors.none)
        or (opts.inactive and colors.ui.inactive_base)
        or colors.ui.base,
    },

    --------------------
    --- Status
    --------------------
    StatusLine = { fg = colors.ui.text, bg = colors.ui.statusline },
    StatusLineNC = { fg = colors.ui.text_inactive, bg = colors.none },
    StatusInactive = { fg = colors.ui.tabline, bg = colors.ui.text_inactive }, -- TODO: find better inactive color
    StatusNormal = { fg = colors.ui.tabline, bg = colors.ui.blue },
    StatusInsert = { fg = colors.ui.tabline, bg = colors.ui.green },
    StatusVisual = { fg = colors.ui.tabline, bg = colors.ui.purple },
    StatusReplace = { fg = colors.ui.tabline, bg = colors.ui.red },
    StatusCommand = { fg = colors.ui.tabline, bg = colors.ui.yellow },
    StatusTerminal = { link = "StatusInsert" },

    --------------------
    --- UI
    --------------------
    Cursor = { fg = colors.ui.base, bg = colors.ui.text },
    CursorIM = { link = "Cursor" },
    lCursor = { link = "Cursor" },

    CursorLineNr = { fg = colors.ui.text_active, bg = colors.none }, -- Active line number
    LineNr = { fg = colors.ui.none_text, bg = colors.none }, -- Line numbers

    WinSeparator = {
      fg = colors.ui.split,
      bg = opts.transparent and colors.none or colors.ui.base,
      bold = false,
    },
    VertSplit = {
      fg = colors.ui.split,
      bg = opts.transparent and colors.none or colors.ui.base,
    },

    Folded = { fg = colors.ui.none_text, bg = colors.none },
    FoldColumn = { fg = colors.ui.none_text, bg = colors.none },

    NonText = { fg = colors.ui.none_text, bg = colors.none },
    EndOfBuffer = { fg = colors.ui.none_text, bg = colors.none },
    SignColumn = { fg = colors.none, bg = colors.none },

    --------------------
    --- Diagnostics
    --------------------
    DiffAdd = { fg = colors.ui.base, bg = colors.syntax.green },
    DiffChange = { fg = colors.ui.base, bg = colors.syntax.yellow },
    DiffDelete = { fg = colors.ui.base, bg = colors.syntax.red },
    DiffText = { fg = colors.ui.base, bg = colors.syntax.yellow },
    DiffAdded = { fg = colors.syntax.green },
    DiffRemoved = { fg = colors.syntax.red },
    DiffChanged = { fg = colors.syntax.blue },
    DiffOldFile = { fg = colors.syntax.orange },
    DiffNewFile = { fg = colors.syntax.green },
    DiffFile = { fg = colors.syntax.blue },
    DiffLine = { fg = colors.syntax.text }, -- NOTE: Find better color
    DiffIndexLine = { fg = colors.syntax.cyan },

    ErrorMsg = { fg = colors.syntax.red, bg = colors.none },
    WarningMsg = { fg = colors.ui.yellow, bg = colors.none },
    Question = { fg = colors.ui.purple, bg = colors.none },

    --------------------
    --- Menu
    --------------------
    Pmenu = { fg = colors.ui.text, bg = colors.ui.float },
    -- TODO: move `menu_selection` -> `selection`
    PmenuSel = { bg = colors.ui.menu_selection, bold = true, blend = 0 },
    PmenuSbar = { fg = colors.none, bg = colors.ui.float },
    PmenuThumb = { fg = colors.none, bg = colors.ui.scrollbar, blend = 0 },

    WildMenu = { fg = colors.ui.base, bg = colors.ui.accent },

    --------------------
    --- Search & Select
    --------------------
    Search = { fg = colors.none, bg = colors.ui.selection },
    IncSearch = { fg = colors.ui.base, bg = colors.ui.purple },
    Substitute = { fg = colors.ui.base, bg = colors.ui.red, bold = true },
    CurSearch = { link = "IncSearch" },
    Visual = { fg = colors.none, bg = colors.ui.selection },
    VisualNOS = { fg = colors.ui.selection, bg = colors.none },

    --------------------
    --- Highlights
    --------------------
    CursorColumn = { fg = colors.none, bg = colors.ui.current_line },
    ColorColumn = { fg = colors.none, bg = colors.ui.current_line }, -- NOTE: Find better color
    CursorLine = { fg = colors.none, bg = opts.transparent and colors.none or colors.ui.current_line },
    MatchParen = { fg = colors.ui.orange, bg = colors.none, bold = true },

    --------------------
    --- Spell
    --------------------
    SpellBad = { sp = colors.ui.red, undercurl = true },
    SpellCap = { sp = colors.ui.yellow, undercurl = true },
    SpellLocal = { sp = colors.ui.blue, undercurl = true },
    SpellRare = { sp = colors.ui.green, undercurl = true },

    ----------------
    --- Other
    ----------------
    Terminal = { fg = colors.ui.text, bg = colors.ui.base },
    Directory = { fg = colors.ui.blue, bg = colors.none },
    QuickFixLine = { fg = colors.ui.base, bg = colors.ui.yellow },
  }
end

return callback
