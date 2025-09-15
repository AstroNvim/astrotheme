local colors = {
  _style = "astromars",
  icon = {
    c = "#519aba",
    css = "#61afef",
    deb = "#a1b7ee",
    docker = "#384d54",
    html = "#de8c92",
    jpeg = "#c882e7",
    jpg = "#c882e7",
    js = "#ebcb8b",
    jsx = "#519ab8",
    kt = "#7bc99c",
    lock = "#c4c720",
    lua = "#51a0cf",
    md = "#519aba",
    mp3 = "#d39ede",
    mp4 = "#9ea3de",
    out = "#abb2bf",
    pkg = "#d39ede",
    png = "#c882e7",
    py = "#a3b8ef",
    rb = "#ff75a0",
    robots = "#abb2bf",
    rpm = "#fca2aa",
    rs = "#dea584",
    toml = "#39bf39",
    ts = "#519aba",
    ttf = "#abb2bf",
    vue = "#7bc99c",
    woff = "#abb2bf",
    woff2 = "#abb2bf",
    zip = "#f9d71c"
  },
  none = "NONE",
  syntax = {
    blue = "#4FA9C6",
    comment = "#63646A",
    cyan = "#4FAD97",
    green = "#84A860",
    mute = "#444145",
    orange = "#EF9474",
    purple = "#CD87BA",
    red = "#DF8489",
    text = "#A5B2BC",
    yellow = "#C3963D"
  },
  term = {
    background = "#1E1517",
    black = "#281E22",
    blue = "#4FA9C6",
    bright_black = "#41383A",
    bright_blue = "#72CCE9",
    bright_cyan = "#72D0BA",
    bright_green = "#A7CB83",
    bright_purple = "#F0AADD",
    bright_red = "#FFA7AC",
    bright_white = "#C8D5DF",
    bright_yellow = "#E6B960",
    cyan = "#4FAD97",
    foreground = "#8B7079",
    green = "#84A860",
    purple = "#CD87BA",
    red = "#DF8489",
    white = "#8B7079",
    yellow = "#C3963D"
  },
  ui = {
    accent = "#9CBDC9",
    base = "#1E1517",
    blue = "#9CBDC9",
    border = "#736468",
    current_line = "#22191B",
    cyan = "#88C3AB",
    float = "#1A1113",
    green = "#9AC374",
    highlight = "#251D1F",
    inactive_base = "#1A1113",
    menu_selection = "#1B282C",
    none_text = "#393337",
    orange = "#FAA27F",
    prompt = "#281E22",
    purple = "#E8A1D7",
    red = "#E77777",
    scrollbar = "#9CBDC9",
    selection = "#1B282C",
    split = "#281E22",
    statusline = "#281E22",
    tabline = "#281E22",
    text = "#8B7079",
    text_active = "#A5B2BC",
    text_inactive = "#68545B",
    text_match = "#ffeeee",
    title = "#9CBDC9",
    tool = "#1A1113",
    winbar = "#8D8184",
    yellow = "#FFA31A"
  }
}

local highlights = {
  ["@annotation"] = {
    fg = "#C3963D"
  },
  ["@attribute"] = {
    fg = "#C3963D"
  },
  ["@attribute.builtin"] = "@attribute",
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.special"] = "SpecialChar",
  ["@class"] = {
    fg = "#4FA9C6"
  },
  ["@comment"] = "Comment",
  ["@comment.documentation"] = "@comment",
  ["@comment.error"] = "DiagnosticError",
  ["@comment.hint"] = "DiagnosticHint",
  ["@comment.info"] = "DiagnosticInfo",
  ["@comment.todo"] = {
    fg = "#FFA31A"
  },
  ["@comment.warning"] = "DiagnosticWarn",
  ["@conditional"] = "@keyword.conditional",
  ["@conditional.ternary"] = "@keyword.conditional.ternary",
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "@constant",
  ["@constant.macro"] = "@constant",
  ["@constant.rust"] = {
    fg = "#4FAD97"
  },
  ["@constructor"] = "@function",
  ["@constructor.lua"] = {
    fg = "#EF9474"
  },
  ["@constructor.tsx"] = {
    fg = "#CD87BA"
  },
  ["@constructor.typescript"] = {
    fg = "#CD87BA"
  },
  ["@debug"] = "@keyword.debug",
  ["@decorator"] = {
    fg = "#EF9474"
  },
  ["@define"] = "@keyword.directive.define",
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdded",
  ["@enum"] = {
    fg = "#4FAD97"
  },
  ["@enumMember"] = {
    fg = "#EF9474"
  },
  ["@error"] = "Error",
  ["@event"] = {
    fg = "#EF9474"
  },
  ["@exception"] = "@keyword.exception",
  ["@field"] = "@variable.member",
  ["@field.yaml"] = {
    fg = "#DF8489"
  },
  ["@float"] = "@number.float",
  ["@function"] = "Function",
  ["@function.builtin"] = {
    fg = "#4FAD97"
  },
  ["@function.call"] = "@function",
  ["@function.macro"] = {
    fg = "#C3963D"
  },
  ["@function.macro.rust"] = {
    fg = "#DF8489"
  },
  ["@function.method"] = "@function",
  ["@function.method.call"] = "@function.method",
  ["@function.method.call.php"] = "Function",
  ["@function.method.php"] = "Function",
  ["@include"] = "@keyword.include",
  ["@interface"] = {
    fg = "#EF9474"
  },
  ["@keyword"] = "Keyword",
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.conditional.ternary"] = "@keyword.conditional",
  ["@keyword.corotine"] = "Keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "Keyword",
  ["@keyword.directive.define"] = "Keyword",
  ["@keyword.exception"] = "Exception",
  ["@keyword.export"] = "@keyword",
  ["@keyword.function"] = "Keyword",
  ["@keyword.import"] = "Include",
  ["@keyword.modifier"] = "Structure",
  ["@keyword.operator"] = "Keyword",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "Keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@keyword.type"] = "Typedef",
  ["@label"] = "Label",
  ["@label.json"] = {
    fg = "#4FA9C6"
  },
  ["@literal.markdown"] = {
    fg = "#84A860"
  },
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@punctuation.special",
  ["@lsp.type.function.rust"] = {
    fg = "#A5B2BC"
  },
  ["@lsp.type.interface"] = "@interface",
  ["@lsp.type.keyword"] = "@keyword",
  ["@lsp.type.macro.rust"] = "@function.macro.rust",
  ["@lsp.type.namespace"] = "@namespace",
  ["@lsp.type.namespace.rust"] = "@namespace.rust",
  ["@lsp.type.number"] = "@number",
  ["@lsp.type.operator"] = "@operator",
  ["@lsp.type.parameter"] = "@parameter",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.selfKeyword"] = "@variable.builtin",
  ["@lsp.type.typeAlias"] = "@type.definition",
  ["@lsp.type.unresolvedReference"] = "@error",
  ["@lsp.type.variable"] = "@variable",
  ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
  ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.function.defaultLibrary.rust"] = {
    fg = "#A5B2BC"
  },
  ["@lsp.typemod.function.global"] = "@function.builtin",
  ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
  ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.method.reference"] = "@function",
  ["@lsp.typemod.method.trait"] = "@function",
  ["@lsp.typemod.operator.injected"] = "@operator",
  ["@lsp.typemod.selfKeyword.defaultLibrary"] = "@keyword",
  ["@lsp.typemod.string.injected"] = "@string",
  ["@lsp.typemod.type.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
  ["@lsp.typemod.variable.injected"] = "@variable",
  ["@lsp.typemod.variable.readonly"] = "@constant",
  ["@markup.environment"] = {
    fg = "#EF9474"
  },
  ["@markup.heading"] = {
    bold = true,
    fg = "#A5B2BC"
  },
  ["@markup.heading.1.markdown"] = {
    bold = true,
    fg = "#CD87BA"
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = "#4FA9C6"
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = "#4FAD97"
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = "#84A860"
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = "#C3963D"
  },
  ["@markup.heading.6.markdown"] = {
    bold = true,
    fg = "#C3963D"
  },
  ["@markup.italic"] = {
    fg = "#A5B2BC",
    italic = true
  },
  ["@markup.link"] = {
    bold = true,
    fg = "#C3963D"
  },
  ["@markup.link.label"] = "String",
  ["@markup.link.url"] = {
    fg = "#4FA9C6",
    italic = true,
    underline = true
  },
  ["@markup.list"] = "Special",
  ["@markup.list.checked"] = {
    bold = true,
    fg = "#88C3AB"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#EF9474"
  },
  ["@markup.list.unchecked"] = {
    bold = true,
    fg = "#9CBDC9"
  },
  ["@markup.math"] = {
    fg = "#4FA9C6"
  },
  ["@markup.quote"] = {
    fg = "#A5B2BC",
    italic = true
  },
  ["@markup.raw"] = {
    fg = "#DF8489"
  },
  ["@markup.raw.block"] = {
    fg = "#A5B2BC"
  },
  ["@markup.strikethrough"] = {
    fg = "#A5B2BC",
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true,
    fg = "#A5B2BC"
  },
  ["@markup.underline"] = "Underline",
  ["@method"] = "@function",
  ["@method.call"] = "@function.method",
  ["@method.call.php"] = "@function.method.call.php",
  ["@method.php"] = "@function.method.php",
  ["@modifier"] = {
    fg = "#EF9474"
  },
  ["@module"] = "Keyword",
  ["@module.builtin"] = {
    fg = "#C3963D"
  },
  ["@module.rust"] = {
    fg = "#CD87BA"
  },
  ["@namespace"] = "@module",
  ["@namespace.builtin"] = "@module.builtin",
  ["@namespace.rust"] = "@module.rust",
  ["@none.markdown"] = {
    fg = "#A5B2BC"
  },
  ["@number"] = "Number",
  ["@number.css"] = {
    fg = "#4FAD97"
  },
  ["@number.float"] = "Float",
  ["@operator"] = "Operator",
  ["@parameter"] = "@variable.parameter",
  ["@preproc"] = "@keyword.directive",
  ["@property"] = {
    fg = "#DF8489"
  },
  ["@property.class.css"] = {
    fg = "#C3963D"
  },
  ["@property.cpp"] = {
    fg = "#EF9474"
  },
  ["@property.css"] = {
    fg = "#EF9474"
  },
  ["@property.id.css"] = {
    fg = "#4FA9C6"
  },
  ["@property.toml"] = {
    fg = "#DF8489"
  },
  ["@punctuation.bracket"] = {
    fg = "#A5B2BC"
  },
  ["@punctuation.bracket.php"] = {
    bold = true,
    fg = "#CD87BA"
  },
  ["@punctuation.delimiter"] = {
    fg = "#A5B2BC"
  },
  ["@punctuation.delimiter.markdown"] = "@punctuation.delimiter",
  ["@punctuation.special"] = {
    fg = "#A5B2BC"
  },
  ["@punctuation.special.markdown"] = "@punctuation.special",
  ["@punctuation.special.rust"] = {
    fg = "#CD87BA"
  },
  ["@regexp"] = {
    fg = "#4FAD97"
  },
  ["@repeat"] = "@keyword.repeat",
  ["@storageclass"] = "@keyword.storageclass",
  ["@string"] = "String",
  ["@string.documentation"] = "String",
  ["@string.escape"] = {
    fg = "#DF8489"
  },
  ["@string.plain.css"] = {
    fg = "#84A860"
  },
  ["@string.regex"] = "@string.regexp",
  ["@string.regexp"] = "String",
  ["@string.special"] = "String",
  ["@string.special.path"] = "String",
  ["@string.special.symbol"] = "String",
  ["@string.special.symbol.ruby"] = {
    fg = "#EF9474"
  },
  ["@string.special.url"] = "@markup.link.url",
  ["@struct"] = {
    fg = "#4FA9C6"
  },
  ["@symbol"] = "@string.special.symbol",
  ["@symbol.ruby"] = "@string.special.symbol.ruby",
  ["@tag"] = {
    fg = "#DF8489"
  },
  ["@tag.attribute"] = {
    fg = "#4FAD97"
  },
  ["@tag.attribute.tsx"] = {
    fg = "#CD87BA",
    italic = true
  },
  ["@tag.delimiter"] = {
    fg = "#A5B2BC"
  },
  ["@text"] = {
    fg = "#A5B2BC"
  },
  ["@text.checked"] = "@markup.list.checked",
  ["@text.danger"] = "@comment.error",
  ["@text.diff.add"] = "@diff.plus",
  ["@text.diff.delete"] = "@diff.minus",
  ["@text.emphasis"] = "@markup.emphasis",
  ["@text.environment"] = "@markup.environment",
  ["@text.environment.name"] = "@markup.environment",
  ["@text.literal"] = "@markup.raw",
  ["@text.math"] = "@markup.math",
  ["@text.note"] = "@comment.hint",
  ["@text.quote"] = "@markup.quote",
  ["@text.reference"] = "@markup.link",
  ["@text.strike"] = "@markup.strikethrough",
  ["@text.strong"] = "@markup.strong",
  ["@text.title"] = "@markup.heading",
  ["@text.title.1.markdown"] = "@markup.heading.1.markdown",
  ["@text.title.2.markdown"] = "@markup.heading.2.markdown",
  ["@text.title.3.markdown"] = "@markup.heading.3.markdown",
  ["@text.title.4.markdown"] = "@markup.heading.4.markdown",
  ["@text.title.5.markdown"] = "@markup.heading.5.markdown",
  ["@text.todo"] = "@comment.todo",
  ["@text.todo.checked"] = "@text.checked",
  ["@text.todo.danger"] = "@text.danger",
  ["@text.todo.note"] = "@text.note",
  ["@text.todo.unchecked"] = "@text.unchecked",
  ["@text.todo.warning"] = "@text.warning",
  ["@text.unchecked"] = "@markup.list.unchecked",
  ["@text.underline"] = "@markup.underline",
  ["@text.uri"] = "@markup.link.url",
  ["@text.warning"] = "@comment.warning",
  ["@title.markdown"] = "markup.heading",
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#C3963D"
  },
  ["@type.css"] = {
    fg = "#EF9474"
  },
  ["@type.definition"] = "@type",
  ["@type.qualifier"] = "@type",
  ["@type.qualifier.php"] = "Keyword",
  ["@type.qualifier.typescript"] = "Keyword",
  ["@type.rust"] = {
    fg = "#4FAD97"
  },
  ["@type.tag.css"] = {
    fg = "#CD87BA"
  },
  ["@typeParameter"] = {
    fg = "#C3963D"
  },
  ["@variable"] = "Identifier",
  ["@variable.builtin"] = {
    bold = false,
    fg = "#4FAD97"
  },
  ["@variable.lua"] = "@variable",
  ["@variable.member"] = "@property",
  ["@variable.parameter"] = {
    fg = "#EF9474"
  },
  ["@variable.parameter.builtin"] = "@variable.parameter",
  Added = {
    fg = "#84A860"
  },
  AerialArrayIcon = "@constant",
  AerialBooleanIcon = "@boolean",
  AerialClassIcon = "@type",
  AerialConstantIcon = "@constant",
  AerialConstructorIcon = "@constructor",
  AerialEnumIcon = "@type",
  AerialEnumMemberIcon = "@field",
  AerialEventIcon = "@type",
  AerialFieldIcon = "@field",
  AerialFileIcon = "@text.uri",
  AerialFunctionIcon = "@function",
  AerialGuide = {
    fg = "#393337"
  },
  AerialInterfaceIcon = "@type",
  AerialKeyIcon = "@type",
  AerialLine = {
    bg = "NONE",
    fg = "#9CBDC9"
  },
  AerialMethodIcon = "@method",
  AerialModuleIcon = "@namespace",
  AerialNamespaceIcon = "@namespace",
  AerialNormal = {
    fg = "#8B7079"
  },
  AerialNullIcon = "@type",
  AerialNumberIcon = "@number",
  AerialObjectIcon = "@type",
  AerialOperatorIcon = "@operator",
  AerialPackageIcon = "@namespace",
  AerialPropertyIcon = "@property",
  AerialStringIcon = "@string",
  AerialStructIcon = "@type",
  AerialTypeIcon = "@type",
  AerialTypeParameterIcon = "@parameter",
  AerialVariableIcon = "@variable",
  AvanteConflictCurrent = "DiffText",
  AvanteConflictIncoming = "DiffAdd",
  AvanteReversedSubtitle = {
    fg = "#1E1517"
  },
  AvanteReversedThirdTitle = {
    fg = "#1E1517"
  },
  AvanteReversedTitle = {
    fg = "#1E1517"
  },
  AvanteSubtitle = {
    bg = "#1E1517",
    fg = "#9AC374"
  },
  AvanteThirdTitle = {
    bg = "#1E1517",
    fg = "#FFA31A"
  },
  AvanteTitle = {
    bg = "#1E1517",
    fg = "#9CBDC9"
  },
  Beacon = {
    bg = "#4FA9C6"
  },
  BlinkCmpKimdStruct = "@type",
  BlinkCmpKind = {
    fg = "#C3963D"
  },
  BlinkCmpKindClass = "@type",
  BlinkCmpKindColor = "@constant",
  BlinkCmpKindConstant = "@constant",
  BlinkCmpKindConstructor = "@constructor",
  BlinkCmpKindEnum = "@type",
  BlinkCmpKindEnumMember = "@field",
  BlinkCmpKindEvent = "@type",
  BlinkCmpKindField = "@field",
  BlinkCmpKindFile = "@text.uri",
  BlinkCmpKindFolder = "@constant",
  BlinkCmpKindFunction = "@function",
  BlinkCmpKindInterface = "@type",
  BlinkCmpKindKeyword = "@keyword",
  BlinkCmpKindMethod = "@method",
  BlinkCmpKindModule = "@namespace",
  BlinkCmpKindOperator = "@operator",
  BlinkCmpKindProperty = "@property",
  BlinkCmpKindReference = "@type",
  BlinkCmpKindSnippet = "@constant",
  BlinkCmpKindText = "@text",
  BlinkCmpKindTypeParameter = "@type",
  BlinkCmpKindUnit = "@constant",
  BlinkCmpKindValue = "@constant",
  BlinkCmpKindVariable = "@variable",
  BlinkCmpLabel = {
    fg = "#8B7079"
  },
  BlinkCmpLabelDeprecated = {
    fg = "#DF8489",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bold = true,
    fg = "#ffeeee"
  },
  Bold = {
    bold = true
  },
  Boolean = {
    bg = "NONE",
    fg = "#EF9474"
  },
  BufferLineBufferSelected = {
    bg = "#1E1517",
    bold = true,
    fg = "#A5B2BC"
  },
  BufferLineBufferVisible = {
    bg = "#1E1517",
    fg = "#68545B"
  },
  BufferLineCloseButtonSelected = {
    bg = "#281E22",
    fg = "#E77777"
  },
  BufferLineCloseButtonVisible = {
    bg = "#281E22",
    fg = "#E77777"
  },
  BufferLineError = {
    bg = "#E77777",
    fg = "#E77777"
  },
  BufferLineErrorDiagnostic = {
    bg = "#E77777",
    fg = "#E77777"
  },
  BufferLineIndicatorSelected = {
    bg = "#1E1517",
    fg = "#1E1517"
  },
  BufferLineModified = {
    bg = "#281E22",
    fg = "#9AC374"
  },
  BufferLineModifiedSelected = {
    bg = "#1E1517",
    fg = "#9AC374"
  },
  BufferLineModifiedVisible = {
    bg = "#1E1517",
    fg = "#8B7079"
  },
  BufferLineTab = {
    bg = "#281E22",
    fg = "#68545B"
  },
  BufferLineTabClose = {
    bg = "#281E22",
    fg = "#E77777"
  },
  BufferLineTabSelected = {
    bg = "#281E22",
    fg = "#8B7079"
  },
  Changed = {
    fg = "#EF9474"
  },
  Character = {
    bg = "NONE",
    fg = "#84A860"
  },
  CmpItemAbbr = {
    fg = "#8B7079"
  },
  CmpItemAbbrDeprecated = {
    fg = "#DF8489",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bold = true,
    fg = "#ffeeee"
  },
  CmpItemAbbrMatchFuzzy = {
    bold = true,
    fg = "#ffeeee"
  },
  CmpItemKimdStruct = "@type",
  CmpItemKind = {
    fg = "#C3963D"
  },
  CmpItemKindClass = "@type",
  CmpItemKindColor = "@constant",
  CmpItemKindConstant = "@constant",
  CmpItemKindConstructor = "@constructor",
  CmpItemKindEnum = "@type",
  CmpItemKindEnumMember = "@field",
  CmpItemKindEvent = "@type",
  CmpItemKindField = "@field",
  CmpItemKindFile = "@text.uri",
  CmpItemKindFolder = "@constant",
  CmpItemKindFunction = "@function",
  CmpItemKindInterface = "@type",
  CmpItemKindKeyword = "@keyword",
  CmpItemKindMethod = "@method",
  CmpItemKindModule = "@namespace",
  CmpItemKindOperator = "@operator",
  CmpItemKindProperty = "@property",
  CmpItemKindReference = "@type",
  CmpItemKindSnippet = "@constant",
  CmpItemKindText = "@text",
  CmpItemKindTypeParameter = "@type",
  CmpItemKindUnit = "@constant",
  CmpItemKindValue = "@constant",
  CmpItemKindVariable = "@variable",
  ColorColumn = {
    bg = "#22191B",
    fg = "NONE"
  },
  Comment = {
    bg = "NONE",
    fg = "#63646A",
    italic = true
  },
  Conceal = {
    bg = "NONE",
    fg = "#68545B"
  },
  Conditional = {
    bg = "NONE",
    fg = "#CD87BA"
  },
  Constant = {
    bg = "NONE",
    fg = "#C3963D"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#8B7079",
    fg = "#1E1517"
  },
  CursorColumn = {
    bg = "#22191B",
    fg = "NONE"
  },
  CursorIM = "Cursor",
  CursorLine = {
    bg = "#22191B",
    fg = "NONE"
  },
  CursorLineNr = {
    bg = "NONE",
    fg = "#A5B2BC"
  },
  DapUIBreakpointsCurrentLine = {
    bold = true,
    fg = "#FFA31A"
  },
  DapUIBreakpointsDisabledLine = "Comment",
  DapUIBreakpointsInfo = {
    fg = "#E8A1D7"
  },
  DapUIBreakpointsLine = "DapUILineNumber",
  DapUIBreakpointsPath = "Title",
  DapUIDecoration = {
    fg = "#393337"
  },
  DapUIFloatBorder = "FloatBorder",
  DapUIFrameName = "Normal",
  DapUILineNumber = "Number",
  DapUIModifiedValue = {
    bold = true,
    fg = "#FFA31A"
  },
  DapUIPlayPause = {
    fg = "#9AC374"
  },
  DapUIRestart = {
    fg = "#FFA31A"
  },
  DapUIScope = "Title",
  DapUISource = "Keyword",
  DapUIStepBack = {
    fg = "#9CBDC9"
  },
  DapUIStepInto = {
    fg = "#9CBDC9"
  },
  DapUIStepOut = {
    fg = "#9CBDC9"
  },
  DapUIStepOver = {
    fg = "#9CBDC9"
  },
  DapUIStop = {
    fg = "#E77777"
  },
  DapUIStoppedThread = "Title",
  DapUIThread = "String",
  DapUIType = "Type",
  DapUIValue = {
    fg = "#DF8489"
  },
  DapUIVariable = "Identifier",
  DapUIWatchesEmpty = {
    fg = "#E77777"
  },
  DapUIWatchesError = {
    fg = "#E77777"
  },
  DapUIWatchesValue = {
    fg = "#FAA27F"
  },
  DashboardCenter = {
    fg = "#4FA9C6"
  },
  DashboardFooter = {
    fg = "#4FAD97"
  },
  DashboardHeader = {
    fg = "#4FAD97"
  },
  DashboardShortcut = {
    fg = "#C3963D"
  },
  Debug = {
    bg = "NONE",
    fg = "#9CBDC9"
  },
  Define = {
    bg = "NONE",
    fg = "#CD87BA"
  },
  Delimiter = {
    bg = "NONE",
    fg = "#4FA9C6"
  },
  DevIconC = {
    fg = "#519aba"
  },
  DevIconCss = {
    fg = "#61afef"
  },
  DevIconDeb = {
    fg = "#a1b7ee"
  },
  DevIconDockerfile = {
    fg = "#384d54"
  },
  DevIconHtml = {
    fg = "#de8c92"
  },
  DevIconJpeg = {
    fg = "#c882e7"
  },
  DevIconJpg = {
    fg = "#c882e7"
  },
  DevIconJs = {
    fg = "#ebcb8b"
  },
  DevIconJsx = {
    fg = "#519ab8"
  },
  DevIconKotlin = {
    fg = "#7bc99c"
  },
  DevIconLock = {
    fg = "#c4c720"
  },
  DevIconLua = {
    fg = "#51a0cf"
  },
  DevIconMd = {
    fg = "#519aba"
  },
  DevIconMp3 = {
    fg = "#d39ede"
  },
  DevIconMp4 = {
    fg = "#9ea3de"
  },
  DevIconOut = {
    fg = "#abb2bf"
  },
  DevIconPackageJson = {
    fg = "#d39ede"
  },
  DevIconPackageLockJson = {
    fg = "#d39ede"
  },
  DevIconPng = {
    fg = "#c882e7"
  },
  DevIconPy = {
    fg = "#a3b8ef"
  },
  DevIconRb = {
    fg = "#ff75a0"
  },
  DevIconRobots = {
    fg = "#abb2bf"
  },
  DevIconRpm = {
    fg = "#fca2aa"
  },
  DevIconRs = {
    fg = "#dea584"
  },
  DevIconToml = {
    fg = "#39bf39"
  },
  DevIconTrueTypeFont = {
    fg = "#abb2bf"
  },
  DevIconTs = {
    fg = "#519aba"
  },
  DevIconVue = {
    fg = "#7bc99c"
  },
  DevIconWebOpenFontFormat = {
    fg = "#abb2bf"
  },
  DevIconWebOpenFontFormat2 = {
    fg = "#abb2bf"
  },
  DevIconXz = {
    fg = "#f9d71c"
  },
  DevIconZip = {
    fg = "#f9d71c"
  },
  DiagnosticError = {
    fg = "#E77777"
  },
  DiagnosticHint = {
    fg = "#88C3AB"
  },
  DiagnosticInfo = {
    fg = "#9CBDC9"
  },
  DiagnosticOk = {
    fg = "#9AC374"
  },
  DiagnosticUnderlineError = {
    sp = "#E77777",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#88C3AB",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#9CBDC9",
    undercurl = true
  },
  DiagnosticUnderlineOk = {
    sp = "#9AC374",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#FFA31A",
    undercurl = true
  },
  DiagnosticWarn = {
    fg = "#FFA31A"
  },
  DiffAdd = {
    bg = "#383A29"
  },
  DiffAdded = {
    fg = "#84A860"
  },
  DiffChange = {
    bg = "#473521"
  },
  DiffChanged = {
    fg = "#EF9474"
  },
  DiffDelete = {
    bg = "#4E3134"
  },
  DiffFile = {
    fg = "#4FA9C6"
  },
  DiffIndexLine = {
    fg = "#4FAD97"
  },
  DiffLine = {
    fg = "#A5B2BC"
  },
  DiffNewFile = {
    fg = "#84A860"
  },
  DiffOldFile = {
    fg = "#EF9474"
  },
  DiffRemoved = {
    fg = "#DF8489"
  },
  DiffText = {
    bg = "#503C22"
  },
  Directory = {
    bg = "NONE",
    fg = "#9CBDC9"
  },
  EndOfBuffer = {
    bg = "NONE",
    fg = "#393337"
  },
  Error = {
    bg = "NONE",
    fg = "#E77777"
  },
  ErrorMsg = {
    bg = "NONE",
    fg = "#DF8489"
  },
  Exception = {
    bg = "NONE",
    fg = "#CD87BA"
  },
  FlashBackdrop = {
    fg = "#444145"
  },
  FlashLabel = {
    bg = "#FAA27F",
    bold = true,
    fg = "#1E1517"
  },
  Float = {
    bg = "NONE",
    fg = "#C3963D"
  },
  FloatBorder = {
    bg = "#1A1113",
    fg = "#736468"
  },
  FloatTitle = {
    bg = "#1A1113",
    bold = true,
    fg = "#9CBDC9"
  },
  FocusedSymbol = {
    bg = "NONE",
    fg = "#FFA31A"
  },
  FoldColumn = {
    bg = "NONE",
    fg = "#393337"
  },
  Folded = {
    bg = "#1B282C",
    fg = "#68545B"
  },
  Function = {
    bg = "NONE",
    fg = "#4FA9C6"
  },
  FzfLuaBorder = {
    bg = "#1E1517",
    fg = "#736468"
  },
  FzfLuaHeaderBind = {
    fg = "#88C3AB"
  },
  FzfLuaHeaderText = {
    fg = "#E77777"
  },
  FzfLuaPathLineNr = {
    fg = "#9AC374"
  },
  FzfLuaTitle = {
    bg = "#1E1517",
    bold = true,
    fg = "#9CBDC9"
  },
  GitSignsAdd = {
    bg = "NONE",
    fg = "#9AC374"
  },
  GitSignsChange = {
    bg = "NONE",
    fg = "#FAA27F"
  },
  GitSignsDelete = {
    bg = "NONE",
    fg = "#E77777"
  },
  HeirlineCommand = "StatusCommand",
  HeirlineInactive = "StatusInactive",
  HeirlineInsert = "StatusInsert",
  HeirlineNormal = "StatusNormal",
  HeirlineReplace = "StatusReplace",
  HeirlineTerminal = "StatusTerminal",
  HeirlineVisual = "StatusVisual",
  HighlightURL = {
    underline = true
  },
  HopNextKey = {
    bold = true,
    fg = "#E77777"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#88C3AB"
  },
  HopNextKey2 = {
    fg = "#9CBDC9"
  },
  HopUnmatched = {
    fg = "#444145"
  },
  IblIndent = {
    fg = "#393337"
  },
  IblScope = {
    fg = "#8B7079"
  },
  IblWhitespace = {
    fg = "#393337"
  },
  Identifier = {
    bg = "NONE",
    fg = "#A5B2BC"
  },
  Ignore = {
    bg = "NONE",
    fg = "NONE"
  },
  IlluminatedWordRead = "LspReferenceRead",
  IlluminatedWordText = "LspReferenceText",
  IlluminatedWordWrite = "LspReferenceWrite",
  IncSearch = {
    bg = "#E8A1D7",
    fg = "#1E1517"
  },
  Include = {
    bg = "NONE",
    fg = "#CD87BA"
  },
  IndentBlanklineChar = {
    fg = "#393337"
  },
  IndentBlanklineContextChar = {
    fg = "#8B7079"
  },
  IndentBlanklineContextStart = {
    fg = "#A5B2BC",
    underline = true
  },
  IndentBlanklineSpaceCharBlankline = {
    fg = "#393337"
  },
  IndentBlanklineSpaceshar = {
    fg = "#393337"
  },
  Italic = {
    italic = true
  },
  Keyword = {
    bg = "NONE",
    fg = "#CD87BA"
  },
  Label = {
    bg = "NONE",
    fg = "#4FA9C6"
  },
  LazyButton = "CursorLine",
  LazyButtonActive = "Visual",
  LazyComment = "Comment",
  LazyCommit = {
    bold = true,
    fg = "#68545B"
  },
  LazyCommitIssue = {
    fg = "#FFA31A"
  },
  LazyCommitScope = {
    italic = true
  },
  LazyCommitType = {
    bold = true,
    fg = "#9CBDC9"
  },
  LazyDimmed = "Conceal",
  LazyDir = {
    fg = "#FAA27F"
  },
  LazyH1 = {
    bg = "#9CBDC9",
    bold = true,
    fg = "#1E1517"
  },
  LazyH2 = {
    bold = true,
    fg = "#9CBDC9"
  },
  LazyLocal = {
    fg = "#FFA31A"
  },
  LazyNoCond = "DiagnosticWarn",
  LazyNormal = "NormalFloat",
  LazyProgressDone = {
    fg = "#9AC374"
  },
  LazyProgressTodo = "LineNr",
  LazyProp = "Conceal",
  LazyReasonCmd = {
    fg = "#FAA27F"
  },
  LazyReasonEvent = {
    fg = "#FFA31A"
  },
  LazyReasonFt = {
    fg = "#88C3AB"
  },
  LazyReasonImport = {
    fg = "#8B7079"
  },
  LazyReasonKeys = {
    fg = "#E8A1D7"
  },
  LazyReasonPlugin = {
    fg = "#9CBDC9"
  },
  LazyReasonRuntime = {
    fg = "#FFA31A"
  },
  LazyReasonSource = {
    fg = "#9AC374"
  },
  LazyReasonStart = {
    fg = "#E77777"
  },
  LazySpecial = {
    fg = "#9CBDC9"
  },
  LazyTaskError = {
    fg = "#E77777"
  },
  LazyTaskOutput = {
    fg = "#8B7079"
  },
  LazyUrl = {
    fg = "#9CBDC9",
    underline = true
  },
  LazyValue = {
    fg = "#9AC374"
  },
  LightspeedCursor = "Cursor",
  LightspeedGreyWash = "Comment",
  LightspeedLabel = {
    fg = "#E77777",
    underline = true
  },
  LightspeedLabelDistant = {
    fg = "#E77777",
    underline = true
  },
  LightspeedLabelDistantOverlapped = {
    fg = "#9CBDC9",
    underline = true
  },
  LightspeedLabelOverlapped = {
    fg = "#4FA9C6",
    underline = true
  },
  LightspeedMaskedChar = {
    fg = "#9AC374"
  },
  LightspeedOneCharMatch = "LightspeedShortcut",
  LightspeedPendingOpArea = "IncSearch",
  LightspeedShortcut = {
    bg = "#E77777",
    bold = true,
    fg = "#1A1113",
    underline = true
  },
  LightspeedShortcutOverlapped = {
    bg = "#4FA9C6",
    bold = true,
    fg = "#1A1113",
    underline = true
  },
  LightspeedUniqueChar = "LightspeedUnlabeledMatch",
  LightspeedUnlabeledMatch = {
    bold = true,
    fg = "#A5B2BC"
  },
  LineNr = {
    bg = "NONE",
    fg = "#393337"
  },
  LspCodeLens = {
    fg = "#393337"
  },
  LspCodeLensSeparator = {
    fg = "#393337"
  },
  LspReferenceRead = {
    bg = "#251D1F",
    fg = "NONE"
  },
  LspReferenceText = "LspReferenceRead",
  LspReferenceWrite = "LspReferenceRead",
  Macro = {
    bg = "NONE",
    fg = "#EF9474"
  },
  MasonError = "ErrorMsg",
  MasonHeader = "FloatTitle",
  MasonHeaderSecondary = {
    bg = "#9CBDC9",
    bold = true,
    fg = "#1E1517"
  },
  MasonHeading = {
    bold = true
  },
  MasonHighlight = {
    fg = "#9CBDC9"
  },
  MasonHighlightBlock = {
    bg = "#9CBDC9",
    fg = "#1E1517"
  },
  MasonHighlightBlockBold = {
    bg = "#9CBDC9",
    bold = true,
    fg = "#1E1517"
  },
  MasonHighlightBlockBoldSecondary = {
    bg = "#9CBDC9",
    bold = true,
    fg = "#1E1517"
  },
  MasonHighlightBlockSecondary = {
    bg = "#9CBDC9",
    fg = "#1E1517"
  },
  MasonHighlightSecondary = {
    fg = "#9CBDC9"
  },
  MasonLink = "MasonHighlight",
  MasonMuted = {
    fg = "#E77777"
  },
  MasonMutedBlock = "CursorLine",
  MasonMutedBlockBold = {
    bg = "#9CBDC9",
    bold = true,
    fg = "#1E1517"
  },
  MasonNormal = "NormalFloat",
  MasonWarning = "WarningMsg",
  MatchParen = {
    bg = "NONE",
    bold = true,
    fg = "#FAA27F"
  },
  MiniIconsAzure = {
    fg = "#BFE0EC"
  },
  MiniIconsBlue = {
    fg = "#9CBDC9"
  },
  MiniIconsCyan = {
    fg = "#88C3AB"
  },
  MiniIconsGreen = {
    fg = "#9AC374"
  },
  MiniIconsGrey = {
    fg = "#8B7079"
  },
  MiniIconsOrange = {
    fg = "#FAA27F"
  },
  MiniIconsPurple = {
    fg = "#E8A1D7"
  },
  MiniIconsRed = {
    fg = "#E77777"
  },
  MiniIconsYellow = {
    fg = "#FFA31A"
  },
  MiniStarterCurrent = {
    bold = true,
    fg = "#A5B2BC",
    underline = true
  },
  MiniStarterFooter = {
    bg = "NONE",
    fg = "#9CBDC9"
  },
  MiniStarterHeader = {
    bg = "NONE",
    fg = "#9CBDC9"
  },
  MiniStarterInactive = {
    fg = "#68545B"
  },
  MiniStarterItem = {
    fg = "#8B7079"
  },
  MiniStarterItemBullet = {
    fg = "#9CBDC9"
  },
  MiniStarterItemPrefix = {
    fg = "#FFA31A"
  },
  MiniStarterQuery = {
    bold = true,
    fg = "#9AC374"
  },
  MiniStarterSection = {
    bold = true,
    fg = "#9CBDC9"
  },
  ModeMsg = {
    bold = true,
    fg = "#8B7079"
  },
  MoreMsg = {
    bold = true,
    fg = "#8B7079"
  },
  NeoTreeCursorLine = "PmenuSel",
  NeoTreeDirectoryIcon = {
    fg = "#9CBDC9"
  },
  NeoTreeFileIcon = {
    fg = "#8B7079"
  },
  NeoTreeFileName = {
    fg = "#8B7079"
  },
  NeoTreeFileNameOpened = {
    fg = "#9AC374"
  },
  NeoTreeFloatBorder = {
    fg = "#1A1113"
  },
  NeoTreeFloatTitle = {
    bg = "#1A1113",
    bold = true,
    fg = "#9CBDC9"
  },
  NeoTreeGitAdded = {
    fg = "#9AC374"
  },
  NeoTreeGitConflict = {
    fg = "#E77777"
  },
  NeoTreeGitDeleted = {
    fg = "#68545B"
  },
  NeoTreeGitIgnored = {
    fg = "#8B7079"
  },
  NeoTreeGitModified = {
    fg = "#FAA27F"
  },
  NeoTreeGitRenamed = {
    fg = "#FAA27F"
  },
  NeoTreeGitStaged = {
    fg = "#88C3AB"
  },
  NeoTreeGitUnstaged = {
    fg = "#FFA31A"
  },
  NeoTreeGitUntracked = {
    fg = "#FFA31A"
  },
  NeoTreeIndentMarker = {
    fg = "#393337"
  },
  NeoTreeNormal = {
    bg = "#1A1113",
    fg = "#8B7079"
  },
  NeoTreeNormalNC = {
    bg = "#1A1113",
    fg = "#8B7079"
  },
  NeoTreeRootName = {
    bold = true,
    fg = "#A5B2BC"
  },
  NeoTreeSymbolicLinkTarget = {
    fg = "#88C3AB"
  },
  NeoTreeTabActive = {
    bg = "#1A1113",
    bold = true,
    fg = "#A5B2BC"
  },
  NeoTreeTabInactive = {
    bg = "#281E22",
    fg = "#68545B"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#1A1113",
    fg = "#1A1113"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#281E22",
    fg = "#281E22"
  },
  NeoTreeTitleBar = {
    bg = "#1A1113",
    bold = true,
    fg = "#9CBDC9"
  },
  NeoTreeVertSplit = {
    bg = "#1E1517",
    fg = "#281E22"
  },
  NeoTreeWinSeparator = {
    bg = "#1E1517",
    bold = true,
    fg = "#281E22"
  },
  NeogitDiffAdd = {
    bg = "#1E1517",
    fg = "#84A860"
  },
  NeogitDiffAddHighlight = {
    bg = "#1E1517",
    fg = "#84A860"
  },
  NeogitDiffContext = {
    bg = "#1A1113",
    fg = "#68545B"
  },
  NeogitDiffContextHighlight = {
    bg = "#1A1113"
  },
  NeogitDiffDelete = {
    bg = "#1E1517",
    fg = "#DF8489"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#1E1517",
    fg = "#DF8489"
  },
  NeogitHunkHeader = {
    bg = "#68545B",
    fg = "#A5B2BC"
  },
  NeogitHunkHeaderCursor = {
    bg = "#E8A1D7",
    fg = "#1E1517"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#E8A1D7",
    fg = "#1E1517"
  },
  NoiceCursor = "Cursor",
  NonText = {
    bg = "NONE",
    fg = "#393337"
  },
  Normal = {
    bg = "#1E1517",
    fg = "#A5B2BC"
  },
  NormalFloat = {
    bg = "#1A1113",
    fg = "#8B7079"
  },
  NormalNC = {
    bg = "#1A1113",
    fg = "#A5B2BC"
  },
  NotifyBackground = {
    bg = "#1E1517",
    fg = "#8B7079"
  },
  NotifyDEBUGBody = {
    bg = "#1A1113",
    fg = "#8B7079"
  },
  NotifyDEBUGBorder = {
    bg = "#1A1113",
    fg = "#88C3AB"
  },
  NotifyDEBUGIcon = {
    bg = "#1A1113",
    fg = "#88C3AB"
  },
  NotifyDEBUGTitle = {
    bg = "#1A1113",
    fg = "#88C3AB"
  },
  NotifyERRORBody = {
    bg = "#1A1113",
    fg = "#8B7079"
  },
  NotifyERRORBorder = {
    bg = "#1A1113",
    fg = "#E77777"
  },
  NotifyERRORIcon = {
    bg = "#1A1113",
    fg = "#E77777"
  },
  NotifyERRORTitle = {
    bg = "#1A1113",
    fg = "#E77777"
  },
  NotifyINFOBody = {
    bg = "#1A1113",
    fg = "#8B7079"
  },
  NotifyINFOBorder = {
    bg = "#1A1113",
    fg = "#9AC374"
  },
  NotifyINFOIcon = {
    bg = "#1A1113",
    fg = "#9AC374"
  },
  NotifyINFOTitle = {
    bg = "#1A1113",
    fg = "#9AC374"
  },
  NotifyLogTime = {
    bg = "#1A1113",
    fg = "#68545B"
  },
  NotifyLogTitle = {
    bg = "#1A1113",
    fg = "#9CBDC9"
  },
  NotifyTRACEBody = {
    bg = "#1A1113",
    fg = "#8B7079"
  },
  NotifyTRACEIcon = {
    bg = "#1A1113",
    fg = "#E8A1D7"
  },
  NotifyTRACERBorder = {
    bg = "#1A1113",
    fg = "#E8A1D7"
  },
  NotifyTRACETitle = {
    bg = "#1A1113",
    fg = "#E8A1D7"
  },
  NotifyWARNBody = {
    bg = "#1A1113",
    fg = "#8B7079"
  },
  NotifyWARNBorder = {
    bg = "#1A1113",
    fg = "#FAA27F"
  },
  NotifyWARNIcon = {
    bg = "#1A1113",
    fg = "#FAA27F"
  },
  NotifyWARNTitle = {
    bg = "#1A1113",
    fg = "#FAA27F"
  },
  Number = {
    bg = "NONE",
    fg = "#EF9474"
  },
  NvChAsciiHeader = {
    bg = "#1E1517",
    fg = "#9CBDC9"
  },
  NvChSection = {
    bg = "#251D1F"
  },
  NvCheatsheetBlue = {
    bg = "#9CBDC9",
    fg = "#1E1517"
  },
  NvCheatsheetCyan = {
    bg = "#88C3AB",
    fg = "#1E1517"
  },
  NvCheatsheetGray = {
    bg = "#8B7079",
    fg = "#1E1517"
  },
  NvCheatsheetGreen = {
    bg = "#9AC374",
    fg = "#1E1517"
  },
  NvCheatsheetMagenta = {
    bg = "#CD87BA",
    fg = "#1E1517"
  },
  NvCheatsheetOrange = {
    bg = "#FAA27F",
    fg = "#1E1517"
  },
  NvCheatsheetPurple = {
    bg = "#E8A1D7",
    fg = "#1E1517"
  },
  NvCheatsheetRed = {
    bg = "#E77777",
    fg = "#1E1517"
  },
  NvCheatsheetWhite = {
    bg = "#ffeeee",
    fg = "#1E1517"
  },
  NvCheatsheetYellow = {
    bg = "#FFA31A",
    fg = "#1E1517"
  },
  NvimTreeEndOfBuffer = {
    fg = "#1E1517"
  },
  NvimTreeExecFile = {
    fg = "#84A860"
  },
  NvimTreeFolderIcon = {
    fg = "#4FA9C6"
  },
  NvimTreeGitDeleted = {
    fg = "#DF8489"
  },
  NvimTreeGitDirty = {
    fg = "#DF8489"
  },
  NvimTreeGitMerge = {
    fg = "#EF9474"
  },
  NvimTreeGitNew = {
    fg = "#C3963D"
  },
  NvimTreeGitRenamed = {
    fg = "#CD87BA"
  },
  NvimTreeGitStaged = {
    fg = "#84A860"
  },
  NvimTreeImageFile = {
    fg = "#CD87BA"
  },
  NvimTreeNormal = {
    bg = "#281E22"
  },
  NvimTreeNormalNC = {
    bg = "#281E22"
  },
  NvimTreeOpenedFile = {
    fg = "#84A860"
  },
  NvimTreeRootFolder = {
    fg = "#1E1517"
  },
  NvimTreeSpecialFile = {
    fg = "#C3963D"
  },
  NvimTreeSymlink = {
    fg = "#4FAD97"
  },
  NvimTreeVertSplit = {
    bg = "#281E22",
    fg = "#281E22"
  },
  Operator = {
    bg = "NONE",
    fg = "#A5B2BC"
  },
  Pmenu = {
    bg = "#1A1113",
    fg = "#8B7079"
  },
  PmenuSbar = {
    bg = "#1A1113",
    fg = "NONE"
  },
  PmenuSel = {
    bg = "#1B282C",
    blend = 0,
    bold = true
  },
  PmenuThumb = {
    bg = "#9CBDC9",
    blend = 0,
    fg = "NONE"
  },
  PreCondit = {
    bg = "NONE",
    fg = "#4FA9C6"
  },
  PreProc = {
    bg = "NONE",
    fg = "#C3963D"
  },
  Question = {
    bg = "NONE",
    fg = "#E8A1D7"
  },
  QuickFixLine = {
    bg = "#FFA31A",
    fg = "#1E1517"
  },
  RainbowDelimiterBlue = {
    fg = "#4FA9C6"
  },
  RainbowDelimiterCyan = {
    fg = "#4FAD97"
  },
  RainbowDelimiterGreen = {
    fg = "#84A860"
  },
  RainbowDelimiterOrange = {
    fg = "#EF9474"
  },
  RainbowDelimiterRed = {
    fg = "#DF8489"
  },
  RainbowDelimiterViolet = {
    fg = "#CD87BA"
  },
  RainbowDelimiterYellow = {
    fg = "#C3963D"
  },
  Removed = {
    fg = "#DF8489"
  },
  RenderMarkDownBullet = {
    link = "@markup.list.markdown"
  },
  RenderMarkDownLink = {
    bold = true,
    fg = "#9CBDC9"
  },
  RenderMarkdownChecked = {
    link = "@markup.list.checked"
  },
  RenderMarkdownCode = {
    bg = "#1A1113"
  },
  RenderMarkdownH1 = {
    link = "@markup.heading.1.markdown"
  },
  RenderMarkdownH1Bg = {
    bg = "#4A3240",
    bold = true,
    fg = "#CD87BA"
  },
  RenderMarkdownH2 = {
    link = "@markup.heading.2.markdown"
  },
  RenderMarkdownH2Bg = {
    bg = "#2A3A43",
    bold = true,
    fg = "#4FA9C6"
  },
  RenderMarkdownH3 = {
    link = "@markup.heading.3.markdown"
  },
  RenderMarkdownH3Bg = {
    bg = "#2A3B37",
    bold = true,
    fg = "#4FAD97"
  },
  RenderMarkdownH4 = {
    link = "@markup.heading.4.markdown"
  },
  RenderMarkdownH4Bg = {
    bg = "#383A29",
    bold = true,
    fg = "#84A860"
  },
  RenderMarkdownH5 = {
    link = "@markup.heading.5.markdown"
  },
  RenderMarkdownH5Bg = {
    bg = "#473521",
    bold = true,
    fg = "#C3963D"
  },
  RenderMarkdownH6 = {
    link = "@markup.heading.6.markdown"
  },
  RenderMarkdownH6Bg = {
    bg = "#473521",
    bold = true,
    fg = "#CD87BA"
  },
  RenderMarkdownTodo = {
    bold = true,
    fg = "#9AC374"
  },
  RenderMarkdownUnchecked = {
    link = "@markup.list.unchecked"
  },
  Repeat = {
    bg = "NONE",
    fg = "#CD87BA"
  },
  Search = {
    bg = "#1B282C",
    fg = "NONE"
  },
  SignColumn = {
    bg = "NONE",
    fg = "NONE"
  },
  SnacksDashboardFooter = {
    fg = "#4FAD97"
  },
  SnacksDashboardHeader = {
    fg = "#4FAD97"
  },
  SnacksDashboardKey = {
    fg = "#C3963D"
  },
  SnacksDashboardSpecial = {
    fg = "#4FAD97"
  },
  Special = {
    bg = "NONE",
    fg = "#4FA9C6"
  },
  SpecialChar = {
    bg = "NONE",
    fg = "#4FA9C6"
  },
  SpecialComment = {
    bg = "NONE",
    fg = "#393337"
  },
  SpecialKey = {
    bg = "NONE",
    fg = "#8B7079"
  },
  SpellBad = {
    sp = "#E77777",
    undercurl = true
  },
  SpellCap = {
    sp = "#FFA31A",
    undercurl = true
  },
  SpellLocal = {
    sp = "#9CBDC9",
    undercurl = true
  },
  SpellRare = {
    sp = "#9AC374",
    undercurl = true
  },
  SpotlightBorder = {
    bg = "#1E1517",
    fg = "#736468"
  },
  SpotlightNormal = {
    bg = "#1E1517",
    fg = "#8B7079"
  },
  SpotlightNormalNC = {
    bg = "#1A1113",
    fg = "#A5B2BC"
  },
  SpotlightTitle = {
    bg = "#1E1517",
    bold = true,
    fg = "#9CBDC9"
  },
  SpotlightWinSeparator = {
    bg = "#1A1113",
    fg = "#1A1113"
  },
  Statement = {
    bg = "NONE",
    fg = "#CD87BA"
  },
  StatusCommand = {
    bg = "#FFA31A",
    fg = "#281E22"
  },
  StatusInactive = {
    bg = "#68545B",
    fg = "#281E22"
  },
  StatusInsert = {
    bg = "#9AC374",
    fg = "#281E22"
  },
  StatusLine = {
    bg = "#281E22",
    fg = "#8B7079"
  },
  StatusLineNC = {
    bg = "NONE",
    fg = "#68545B"
  },
  StatusNormal = {
    bg = "#9CBDC9",
    fg = "#281E22"
  },
  StatusReplace = {
    bg = "#E77777",
    fg = "#281E22"
  },
  StatusTerminal = "StatusInsert",
  StatusVisual = {
    bg = "#E8A1D7",
    fg = "#281E22"
  },
  StorageClass = {
    bg = "NONE",
    fg = "#4FA9C6"
  },
  String = {
    bg = "NONE",
    fg = "#84A860"
  },
  Structure = {
    bg = "NONE",
    fg = "#C3963D"
  },
  Substitute = {
    bg = "#E77777",
    bold = true,
    fg = "#1E1517"
  },
  TSRainbowBlue = {
    fg = "#4FA9C6"
  },
  TSRainbowCyan = {
    fg = "#4FAD97"
  },
  TSRainbowGreen = {
    fg = "#84A860"
  },
  TSRainbowOrange = {
    fg = "#EF9474"
  },
  TSRainbowRed = {
    fg = "#DF8489"
  },
  TSRainbowViolet = {
    fg = "#CD87BA"
  },
  TSRainbowYellow = {
    fg = "#C3963D"
  },
  TabLine = {
    bg = "#281E22",
    fg = "#68545B"
  },
  TabLineFill = {
    bg = "#281E22",
    fg = "NONE"
  },
  TabLineSel = {
    bg = "#1E1517",
    bold = true,
    fg = "#A5B2BC",
    italic = true
  },
  Tag = {
    bg = "NONE",
    fg = "#4FA9C6"
  },
  TelescopeMatching = {
    bold = true,
    fg = "#ffeeee"
  },
  TelescopeMultiIcon = {
    fg = "#9CBDC9"
  },
  TelescopeMultiSelection = {
    fg = "#4FA9C6"
  },
  TelescopePreviewBorder = {
    link = "FloatBorder"
  },
  TelescopePreviewNormal = {
    link = "NormalFloat"
  },
  TelescopePreviewTitle = {
    link = "FloatTitle"
  },
  TelescopePromptBorder = {
    bg = "#1A1113",
    fg = "#736468"
  },
  TelescopePromptNormal = {
    bg = "#1A1113",
    fg = "#8B7079"
  },
  TelescopePromptPrefix = {
    fg = "#9CBDC9"
  },
  TelescopePromptTitle = {
    bg = "#1A1113",
    bold = true,
    fg = "#9CBDC9"
  },
  TelescopeResultsBorder = {
    link = "FloatBorder"
  },
  TelescopeResultsNormal = {
    link = "NormalFloat"
  },
  TelescopeResultsTitle = {
    link = "FloatTitle"
  },
  TelescopeSelection = "PmenuSel",
  TelescopeSelectionCaret = {
    fg = "#9CBDC9"
  },
  Terminal = {
    bg = "#1E1517",
    fg = "#8B7079"
  },
  Title = {
    bg = "#1A1113",
    bold = true,
    fg = "#9CBDC9"
  },
  Todo = {
    bg = "NONE",
    fg = "#FFA31A"
  },
  TodoBgBUG = {
    bg = "#E77777",
    bold = true,
    fg = "#1E1517"
  },
  TodoBgHACK = {
    bg = "#FFA31A",
    bold = true,
    fg = "#1E1517"
  },
  TodoBgNOTE = {
    bg = "#88C3AB",
    bold = true,
    fg = "#1E1517"
  },
  TodoBgTODO = {
    bg = "#9CBDC9",
    bold = true,
    fg = "#1E1517"
  },
  TodoBgWARNING = {
    bg = "#FFA31A",
    bold = true,
    fg = "#1E1517"
  },
  Type = {
    bg = "NONE",
    fg = "#4FA9C6"
  },
  Typedef = {
    bg = "NONE",
    fg = "#C3963D"
  },
  Underlined = {
    bg = "NONE",
    fg = "#4FAD97",
    underline = true
  },
  VertSplit = {
    bg = "#1E1517",
    fg = "#281E22"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#C3963D"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#EF9474"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#84A860"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#4FA9C6"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#4FAD97"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#C3963D"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#CD87BA"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#393337"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#4FAD97"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#EF9474"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#393337"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#EF9474"
  },
  Visual = {
    bg = "#1B282C",
    fg = "NONE"
  },
  VisualNOS = {
    bg = "NONE",
    fg = "#1B282C"
  },
  WarningMsg = {
    bg = "NONE",
    fg = "#FFA31A"
  },
  WhichKey = {
    fg = "#88C3AB"
  },
  WhichKeyBorder = "FloatBorder",
  WhichKeyDesc = {
    fg = "#E8A1D7"
  },
  WhichKeyFloat = "NormalFloat",
  WhichKeyGroup = {
    fg = "#9CBDC9"
  },
  WhichKeySeparator = {
    fg = "#393337"
  },
  WhichKeyValue = {
    fg = "#A5B2BC"
  },
  WildMenu = {
    bg = "#9CBDC9",
    fg = "#1E1517"
  },
  WinBar = {
    bg = "NONE",
    fg = "#8D8184"
  },
  WinBarNC = {
    bg = "#1A1113",
    fg = "#68545B"
  },
  WinSeparator = {
    bg = "#1E1517",
    bold = false,
    fg = "#281E22"
  },
  WindowPickerStatusLine = {
    fg = "#E77777"
  },
  WindowPickerStatusLineNC = {
    fg = "#E77777"
  },
  WindowPickerWinBar = {
    fg = "#E77777"
  },
  WindowPickerWinBarNC = {
    fg = "#E77777"
  },
  lCursor = "Cursor",
  rainbowcol1 = {
    fg = "Gold"
  },
  rainbowcol2 = {
    fg = "Orchid"
  },
  rainbowcol3 = {
    fg = "LightSkyBlue"
  },
  rainbowcol4 = {
    fg = "Gold"
  },
  rainbowcol5 = {
    fg = "Orchid"
  },
  rainbowcol6 = {
    fg = "LightSkyBlue"
  },
  rainbowcol7 = {
    fg = "Orchid"
  }
}
