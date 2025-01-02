---@type AstroThemeCallback
local function callback(c, opts)
  local color = require "astrotheme.lib.color"
  local base = color.new(c.ui.base)

  local float_bg = (opts.border and opts.float and opts.inactive and c.ui.float)
    or (opts.border and opts.float and opts.transparent and c.ui.base)
    or (opts.border and opts.float and c.ui.float)
    or (opts.border and opts.inactive and c.ui.base)
    or (opts.border and opts.transparent and c.none)
    or (opts.float and c.ui.float)
    or (opts.inactive and c.ui.base)
    or (opts.border and c.ui.base)
    or c.ui.base

  return {
    --------------------
    --- Normal
    --------------------
    Normal = { fg = c.syntax.text, bg = opts.transparent and c.none or c.ui.base },
    NormalNC = {
      fg = c.syntax.text,
      bg = (opts.transparent and opts.inactive and c.ui.inactive_base)
        or (opts.transparent and c.none)
        or (opts.inactive and c.ui.inactive_base)
        or c.ui.base,
    },

    --------------------
    --- Float
    --------------------
    FloatTitle = {
      fg = (opts.title_invert and c.ui.tool) or c.ui.title,
      bg = (opts.title_invert and c.ui.title) or float_bg,
      bold = true,
    },
    FloatBorder = {
      fg = (opts.border and opts.float and c.ui.border)
        or (opts.border and opts.inactive and c.ui.border)
        or (opts.float and c.ui.float)
        or (opts.transparent and c.ui.base)
        or (opts.border and c.ui.border)
        or c.ui.base,
      bg = float_bg,
    },
    NormalFloat = {
      fg = c.ui.text,
      bg = float_bg,
    },

    --------------------
    --- Text
    --------------------
    Title = {
      fg = (opts.title_invert and c.ui.tool) or c.ui.title,
      bg = (opts.title_invert and c.ui.title) or c.ui.tool,
      bold = true,
    },

    Italic = { italic = true },
    Bold = { bold = true },

    Conceal = { fg = c.ui.text_inactive, bg = c.none },
    SpecialKey = { fg = c.ui.text, bg = c.none },

    ----------------
    --- Tab
    ----------------
    TabLine = { fg = c.ui.text_inactive, bg = c.ui.tabline },
    TabLineSel = { fg = c.ui.text_active, bg = c.ui.base, bold = true, italic = true },
    TabLineFill = { fg = c.none, bg = c.ui.tabline },

    ----------------
    --- Winbar
    ----------------
    WinBar = { fg = c.ui.winbar, bg = c.none },
    WinBarNC = {
      fg = c.ui.text_inactive,
      bg = (opts.transparent and opts.inactive and c.ui.inactive_base)
        or (opts.transparent and c.none)
        or (opts.inactive and c.ui.inactive_base)
        or c.ui.base,
    },

    --------------------
    --- Status
    --------------------
    StatusLine = { fg = c.ui.text, bg = c.ui.statusline },
    StatusLineNC = { fg = c.ui.text_inactive, bg = c.none },
    StatusInactive = { fg = c.ui.tabline, bg = c.ui.text_inactive }, -- TODO: find better inactive color
    StatusNormal = { fg = c.ui.tabline, bg = c.ui.blue },
    StatusInsert = { fg = c.ui.tabline, bg = c.ui.green },
    StatusVisual = { fg = c.ui.tabline, bg = c.ui.purple },
    StatusReplace = { fg = c.ui.tabline, bg = c.ui.red },
    StatusCommand = { fg = c.ui.tabline, bg = c.ui.yellow },
    StatusTerminal = "StatusInsert",

    --------------------
    --- UI
    --------------------
    Cursor = { fg = c.ui.base, bg = c.ui.text },
    CursorIM = "Cursor",
    lCursor = "Cursor",

    CursorLineNr = { fg = c.ui.text_active, bg = c.none }, -- Active line number
    LineNr = { fg = c.ui.none_text, bg = c.none }, -- Line numbers

    WinSeparator = {
      fg = c.ui.split,
      bg = opts.transparent and c.none or c.ui.base,
      bold = false,
    },
    VertSplit = {
      fg = c.ui.split,
      bg = opts.transparent and c.none or c.ui.base,
    },

    Folded = { fg = c.ui.text_inactive, bg = opts.transparent and c.none or c.ui.selection },
    FoldColumn = { fg = c.ui.none_text, bg = c.none },

    NonText = { fg = c.ui.none_text, bg = c.none },
    EndOfBuffer = { fg = c.ui.none_text, bg = c.none },
    SignColumn = { fg = c.none, bg = c.none },

    --------------------
    --- Diff
    --------------------
    Added = { fg = c.syntax.green },
    Removed = { fg = c.syntax.red },
    Changed = { fg = c.syntax.orange },
    DiffAdded = { fg = c.syntax.green }, -- NOTE: DEPRECATED IN v0.10
    DiffRemoved = { fg = c.syntax.red }, -- NOTE: DEPRECATED IN v0.10
    DiffChanged = { fg = c.syntax.orange }, -- NOTE: DEPRECATED IN v0.10
    DiffAdd = { bg = color.new(c.syntax.green):blend(base, 0.75):tohex() },
    DiffChange = { bg = color.new(c.syntax.yellow):blend(base, 0.75):tohex() },
    DiffDelete = { bg = color.new(c.syntax.red):blend(base, 0.75):tohex() },
    DiffText = { bg = color.new(c.syntax.yellow):blend(base, 0.7):tohex() },
    DiffOldFile = { fg = c.syntax.orange },
    DiffNewFile = { fg = c.syntax.green },
    DiffFile = { fg = c.syntax.blue },
    DiffLine = { fg = c.syntax.text }, -- NOTE: Find better color
    DiffIndexLine = { fg = c.syntax.cyan },

    --------------------
    --- Diagnostics
    --------------------
    ---
    ErrorMsg = { fg = c.syntax.red, bg = c.none },
    WarningMsg = { fg = c.ui.yellow, bg = c.none },
    Question = { fg = c.ui.purple, bg = c.none },

    --------------------
    --- Menu
    --------------------
    Pmenu = { fg = c.ui.text, bg = c.ui.float },
    -- TODO: move `menu_selection` -> `selection`
    PmenuSel = { bg = c.ui.menu_selection, bold = true, blend = 0 },
    PmenuSbar = { fg = c.none, bg = c.ui.float },
    PmenuThumb = { fg = c.none, bg = c.ui.scrollbar, blend = 0 },

    WildMenu = { fg = c.ui.base, bg = c.ui.accent },

    --------------------
    --- Search & Select
    --------------------
    Search = { fg = c.none, bg = c.ui.selection },
    IncSearch = { fg = c.ui.base, bg = c.ui.purple },
    Substitute = { fg = c.ui.base, bg = c.ui.red, bold = true },
    CurSearch = "IncSearch",
    Visual = { fg = c.none, bg = c.ui.selection },
    VisualNOS = { fg = c.ui.selection, bg = c.none },

    --------------------
    --- Highlights
    --------------------
    CursorColumn = { fg = c.none, bg = c.ui.current_line },
    ColorColumn = { fg = c.none, bg = c.ui.current_line }, -- NOTE: Find better color
    CursorLine = { fg = c.none, bg = opts.transparent and c.none or c.ui.current_line },
    MatchParen = { fg = c.ui.orange, bg = c.none, bold = true },

    --------------------
    --- Spell
    --------------------
    SpellBad = { sp = c.ui.red, undercurl = true },
    SpellCap = { sp = c.ui.yellow, undercurl = true },
    SpellLocal = { sp = c.ui.blue, undercurl = true },
    SpellRare = { sp = c.ui.green, undercurl = true },

    ----------------
    --- Other
    ----------------
    Terminal = { fg = c.ui.text, bg = c.ui.base },
    Directory = { fg = c.ui.blue, bg = c.none },
    QuickFixLine = { fg = c.ui.base, bg = c.ui.yellow },
  }
end

return callback
