local colors = {
  _style = "astrojupiter",
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
    blue = "#006E89",
    comment = "#937C7A",
    cyan = "#007652",
    green = "#467118",
    mute = "#937C7A",
    orange = "#954D00",
    purple = "#90437A",
    red = "#A13F37",
    text = "#815654",
    yellow = "#805C00"
  },
  term = {
    background = "#FEEEEE",
    black = "#D8D6D5",
    blue = "#006E89",
    bright_black = "#B0AEAD",
    bright_blue = "#2896B1",
    bright_cyan = "#289E7A",
    bright_green = "#6E9940",
    bright_purple = "#B86BA2",
    bright_red = "#C9675F",
    bright_white = "#8B605E",
    bright_yellow = "#A88428",
    cyan = "#007652",
    foreground = "#9E7876",
    green = "#467118",
    purple = "#90437A",
    red = "#A13F37",
    white = "#9E7876",
    yellow = "#805C00"
  },
  ui = {
    accent = "#D04F4E",
    base = "#FEEEEE",
    blue = "#0090A2",
    border = "#D04F4E",
    current_line = "#F6DDD8",
    cyan = "#00976C",
    float = "#F9DCD1",
    green = "#569400",
    highlight = "#E7CFCA",
    inactive_base = "#F9DCD1",
    menu_selection = "#BBC9D7",
    none_text = "#D0B6B6",
    orange = "#D05312",
    prompt = "#D8D6D5",
    purple = "#BD51A4",
    red = "#D04F4E",
    scrollbar = "#D04F4E",
    selection = "#BBC9D7",
    split = "#D8D6D5",
    statusline = "#D8D6D5",
    tabline = "#D8D6D5",
    text = "#9E7876",
    text_active = "#815654",
    text_inactive = "#937C7A",
    text_match = "#D04F4E",
    title = "#D04F4E",
    tool = "#F9DCD1",
    winbar = "#926461",
    yellow = "#AC7300"
  }
}

local highlights = {
  ["@annotation"] = {
    fg = "#805C00"
  },
  ["@attribute"] = {
    fg = "#805C00"
  },
  ["@attribute.builtin"] = "@attribute",
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.special"] = "SpecialChar",
  ["@class"] = {
    fg = "#006E89"
  },
  ["@comment"] = "Comment",
  ["@comment.documentation"] = "@comment",
  ["@comment.error"] = "DiagnosticError",
  ["@comment.hint"] = "DiagnosticHint",
  ["@comment.info"] = "DiagnosticInfo",
  ["@comment.todo"] = {
    fg = "#AC7300"
  },
  ["@comment.warning"] = "DiagnosticWarn",
  ["@conditional"] = "@keyword.conditional",
  ["@conditional.ternary"] = "@keyword.conditional.ternary",
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "@constant",
  ["@constant.macro"] = "@constant",
  ["@constant.rust"] = {
    fg = "#007652"
  },
  ["@constructor"] = "@function",
  ["@constructor.lua"] = {
    fg = "#954D00"
  },
  ["@constructor.tsx"] = {
    fg = "#90437A"
  },
  ["@constructor.typescript"] = {
    fg = "#90437A"
  },
  ["@debug"] = "@keyword.debug",
  ["@decorator"] = {
    fg = "#954D00"
  },
  ["@define"] = "@keyword.directive.define",
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdded",
  ["@enum"] = {
    fg = "#007652"
  },
  ["@enumMember"] = {
    fg = "#954D00"
  },
  ["@error"] = "Error",
  ["@event"] = {
    fg = "#954D00"
  },
  ["@exception"] = "@keyword.exception",
  ["@field"] = "@variable.member",
  ["@field.yaml"] = {
    fg = "#A13F37"
  },
  ["@float"] = "@number.float",
  ["@function"] = "Function",
  ["@function.builtin"] = {
    fg = "#007652"
  },
  ["@function.call"] = "@function",
  ["@function.macro"] = {
    fg = "#805C00"
  },
  ["@function.macro.rust"] = {
    fg = "#A13F37"
  },
  ["@function.method"] = "@function",
  ["@function.method.call"] = "@function.method",
  ["@function.method.call.php"] = "Function",
  ["@function.method.php"] = "Function",
  ["@include"] = "@keyword.include",
  ["@interface"] = {
    fg = "#954D00"
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
    fg = "#006E89"
  },
  ["@literal.markdown"] = {
    fg = "#467118"
  },
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@punctuation.special",
  ["@lsp.type.function.rust"] = {
    fg = "#815654"
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
    fg = "#815654"
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
    fg = "#954D00"
  },
  ["@markup.heading"] = {
    bold = true,
    fg = "#815654"
  },
  ["@markup.heading.1.markdown"] = {
    bold = true,
    fg = "#90437A"
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = "#006E89"
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = "#007652"
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = "#467118"
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = "#805C00"
  },
  ["@markup.heading.6.markdown"] = {
    bold = true,
    fg = "#805C00"
  },
  ["@markup.italic"] = {
    fg = "#815654",
    italic = true
  },
  ["@markup.link"] = {
    bold = true,
    fg = "#805C00"
  },
  ["@markup.link.label"] = "String",
  ["@markup.link.url"] = {
    fg = "#006E89",
    italic = true,
    underline = true
  },
  ["@markup.list"] = "Special",
  ["@markup.list.checked"] = {
    bold = true,
    fg = "#00976C"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#954D00"
  },
  ["@markup.list.unchecked"] = {
    bold = true,
    fg = "#0090A2"
  },
  ["@markup.math"] = {
    fg = "#006E89"
  },
  ["@markup.quote"] = {
    fg = "#815654",
    italic = true
  },
  ["@markup.raw"] = {
    fg = "#A13F37"
  },
  ["@markup.raw.block"] = {
    fg = "#815654"
  },
  ["@markup.strikethrough"] = {
    fg = "#815654",
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true,
    fg = "#815654"
  },
  ["@markup.underline"] = "Underline",
  ["@method"] = "@function",
  ["@method.call"] = "@function.method",
  ["@method.call.php"] = "@function.method.call.php",
  ["@method.php"] = "@function.method.php",
  ["@modifier"] = {
    fg = "#954D00"
  },
  ["@module"] = "Keyword",
  ["@module.builtin"] = {
    fg = "#805C00"
  },
  ["@module.rust"] = {
    fg = "#90437A"
  },
  ["@namespace"] = "@module",
  ["@namespace.builtin"] = "@module.builtin",
  ["@namespace.rust"] = "@module.rust",
  ["@none.markdown"] = {
    fg = "#815654"
  },
  ["@number"] = "Number",
  ["@number.css"] = {
    fg = "#007652"
  },
  ["@number.float"] = "Float",
  ["@operator"] = "Operator",
  ["@parameter"] = "@variable.parameter",
  ["@preproc"] = "@keyword.directive",
  ["@property"] = {
    fg = "#A13F37"
  },
  ["@property.class.css"] = {
    fg = "#805C00"
  },
  ["@property.cpp"] = {
    fg = "#954D00"
  },
  ["@property.css"] = {
    fg = "#954D00"
  },
  ["@property.id.css"] = {
    fg = "#006E89"
  },
  ["@property.toml"] = {
    fg = "#A13F37"
  },
  ["@punctuation.bracket"] = {
    fg = "#815654"
  },
  ["@punctuation.bracket.php"] = {
    bold = true,
    fg = "#90437A"
  },
  ["@punctuation.delimiter"] = {
    fg = "#815654"
  },
  ["@punctuation.delimiter.markdown"] = "@punctuation.delimiter",
  ["@punctuation.special"] = {
    fg = "#815654"
  },
  ["@punctuation.special.markdown"] = "@punctuation.special",
  ["@punctuation.special.rust"] = {
    fg = "#90437A"
  },
  ["@regexp"] = {
    fg = "#007652"
  },
  ["@repeat"] = "@keyword.repeat",
  ["@storageclass"] = "@keyword.storageclass",
  ["@string"] = "String",
  ["@string.documentation"] = "String",
  ["@string.escape"] = {
    fg = "#A13F37"
  },
  ["@string.plain.css"] = {
    fg = "#467118"
  },
  ["@string.regex"] = "@string.regexp",
  ["@string.regexp"] = "String",
  ["@string.special"] = "String",
  ["@string.special.path"] = "String",
  ["@string.special.symbol"] = "String",
  ["@string.special.symbol.ruby"] = {
    fg = "#954D00"
  },
  ["@string.special.url"] = "@markup.link.url",
  ["@struct"] = {
    fg = "#006E89"
  },
  ["@symbol"] = "@string.special.symbol",
  ["@symbol.ruby"] = "@string.special.symbol.ruby",
  ["@tag"] = {
    fg = "#A13F37"
  },
  ["@tag.attribute"] = {
    fg = "#007652"
  },
  ["@tag.attribute.tsx"] = {
    fg = "#90437A",
    italic = true
  },
  ["@tag.delimiter"] = {
    fg = "#815654"
  },
  ["@text"] = {
    fg = "#815654"
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
    fg = "#805C00"
  },
  ["@type.css"] = {
    fg = "#954D00"
  },
  ["@type.definition"] = "@type",
  ["@type.qualifier"] = "@type",
  ["@type.qualifier.php"] = "Keyword",
  ["@type.qualifier.typescript"] = "Keyword",
  ["@type.rust"] = {
    fg = "#007652"
  },
  ["@type.tag.css"] = {
    fg = "#90437A"
  },
  ["@typeParameter"] = {
    fg = "#805C00"
  },
  ["@variable"] = "Identifier",
  ["@variable.builtin"] = {
    bold = false,
    fg = "#007652"
  },
  ["@variable.lua"] = "@variable",
  ["@variable.member"] = "@property",
  ["@variable.parameter"] = {
    fg = "#954D00"
  },
  ["@variable.parameter.builtin"] = "@variable.parameter",
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
    fg = "#D0B6B6"
  },
  AerialInterfaceIcon = "@type",
  AerialKeyIcon = "@type",
  AerialLine = {
    bg = "NONE",
    fg = "#D04F4E"
  },
  AerialMethodIcon = "@method",
  AerialModuleIcon = "@namespace",
  AerialNamespaceIcon = "@namespace",
  AerialNormal = {
    fg = "#9E7876"
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
    fg = "#FEEEEE"
  },
  AvanteReversedThirdTitle = {
    fg = "#FEEEEE"
  },
  AvanteReversedTitle = {
    fg = "#FEEEEE"
  },
  AvanteSubtitle = {
    bg = "#FEEEEE",
    fg = "#569400"
  },
  AvanteThirdTitle = {
    bg = "#FEEEEE",
    fg = "#AC7300"
  },
  AvanteTitle = {
    bg = "#FEEEEE",
    fg = "#D04F4E"
  },
  Beacon = {
    bg = "#006E89"
  },
  BlinkCmpKimdStruct = "@type",
  BlinkCmpKind = {
    fg = "#805C00"
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
    fg = "#9E7876"
  },
  BlinkCmpLabelDeprecated = {
    fg = "#A13F37",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bold = true,
    fg = "#D04F4E"
  },
  Bold = {
    bold = true
  },
  Boolean = {
    bg = "NONE",
    fg = "#954D00"
  },
  BufferLineBufferSelected = {
    bg = "#FEEEEE",
    bold = true,
    fg = "#815654"
  },
  BufferLineBufferVisible = {
    bg = "#FEEEEE",
    fg = "#937C7A"
  },
  BufferLineCloseButtonSelected = {
    bg = "#D8D6D5",
    fg = "#D04F4E"
  },
  BufferLineCloseButtonVisible = {
    bg = "#D8D6D5",
    fg = "#D04F4E"
  },
  BufferLineError = {
    bg = "#D04F4E",
    fg = "#D04F4E"
  },
  BufferLineErrorDiagnostic = {
    bg = "#D04F4E",
    fg = "#D04F4E"
  },
  BufferLineIndicatorSelected = {
    bg = "#FEEEEE",
    fg = "#FEEEEE"
  },
  BufferLineModified = {
    bg = "#D8D6D5",
    fg = "#569400"
  },
  BufferLineModifiedSelected = {
    bg = "#FEEEEE",
    fg = "#569400"
  },
  BufferLineModifiedVisible = {
    bg = "#FEEEEE",
    fg = "#9E7876"
  },
  BufferLineTab = {
    bg = "#D8D6D5",
    fg = "#937C7A"
  },
  BufferLineTabClose = {
    bg = "#D8D6D5",
    fg = "#D04F4E"
  },
  BufferLineTabSelected = {
    bg = "#D8D6D5",
    fg = "#9E7876"
  },
  Character = {
    bg = "NONE",
    fg = "#467118"
  },
  CmpItemAbbr = {
    fg = "#9E7876"
  },
  CmpItemAbbrDeprecated = {
    fg = "#A13F37",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bold = true,
    fg = "#D04F4E"
  },
  CmpItemAbbrMatchFuzzy = {
    bold = true,
    fg = "#D04F4E"
  },
  CmpItemKimdStruct = "@type",
  CmpItemKind = {
    fg = "#805C00"
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
    bg = "#F6DDD8",
    fg = "NONE"
  },
  Comment = {
    bg = "NONE",
    fg = "#937C7A",
    italic = true
  },
  Conceal = {
    bg = "NONE",
    fg = "#937C7A"
  },
  Conditional = {
    bg = "NONE",
    fg = "#90437A"
  },
  Constant = {
    bg = "NONE",
    fg = "#805C00"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#9E7876",
    fg = "#FEEEEE"
  },
  CursorColumn = {
    bg = "#F6DDD8",
    fg = "NONE"
  },
  CursorIM = "Cursor",
  CursorLine = {
    bg = "#F6DDD8",
    fg = "NONE"
  },
  CursorLineNr = {
    bg = "NONE",
    fg = "#815654"
  },
  DapUIBreakpointsCurrentLine = {
    bold = true,
    fg = "#AC7300"
  },
  DapUIBreakpointsDisabledLine = "Comment",
  DapUIBreakpointsInfo = {
    fg = "#BD51A4"
  },
  DapUIBreakpointsLine = "DapUILineNumber",
  DapUIBreakpointsPath = "Title",
  DapUIDecoration = {
    fg = "#D0B6B6"
  },
  DapUIFloatBorder = "FloatBorder",
  DapUIFrameName = "Normal",
  DapUILineNumber = "Number",
  DapUIModifiedValue = {
    bold = true,
    fg = "#AC7300"
  },
  DapUIPlayPause = {
    fg = "#569400"
  },
  DapUIRestart = {
    fg = "#AC7300"
  },
  DapUIScope = "Title",
  DapUISource = "Keyword",
  DapUIStepBack = {
    fg = "#0090A2"
  },
  DapUIStepInto = {
    fg = "#0090A2"
  },
  DapUIStepOut = {
    fg = "#0090A2"
  },
  DapUIStepOver = {
    fg = "#0090A2"
  },
  DapUIStop = {
    fg = "#D04F4E"
  },
  DapUIStoppedThread = "Title",
  DapUIThread = "String",
  DapUIType = "Type",
  DapUIValue = {
    fg = "#A13F37"
  },
  DapUIVariable = "Identifier",
  DapUIWatchesEmpty = {
    fg = "#D04F4E"
  },
  DapUIWatchesError = {
    fg = "#D04F4E"
  },
  DapUIWatchesValue = {
    fg = "#D05312"
  },
  DashboardCenter = {
    fg = "#006E89"
  },
  DashboardFooter = {
    fg = "#007652"
  },
  DashboardHeader = {
    fg = "#007652"
  },
  DashboardShortcut = {
    fg = "#805C00"
  },
  Debug = {
    bg = "NONE",
    fg = "#0090A2"
  },
  Define = {
    bg = "NONE",
    fg = "#90437A"
  },
  Delimiter = {
    bg = "NONE",
    fg = "#006E89"
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
    fg = "#D04F4E"
  },
  DiagnosticHint = {
    fg = "#00976C"
  },
  DiagnosticInfo = {
    fg = "#0090A2"
  },
  DiagnosticOk = {
    fg = "#569400"
  },
  DiagnosticUnderlineError = {
    sp = "#D04F4E",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#00976C",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#0090A2",
    undercurl = true
  },
  DiagnosticUnderlineOk = {
    sp = "#569400",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#AC7300",
    undercurl = true
  },
  DiagnosticWarn = {
    fg = "#AC7300"
  },
  DiffAdd = {
    bg = "#D0CFB9"
  },
  DiffAdded = {
    fg = "#467118"
  },
  DiffChange = {
    bg = "#DFCAB3"
  },
  DiffChanged = {
    fg = "#006E89"
  },
  DiffDelete = {
    bg = "#E7C2C0"
  },
  DiffFile = {
    fg = "#006E89"
  },
  DiffIndexLine = {
    fg = "#007652"
  },
  DiffLine = {
    fg = "#815654"
  },
  DiffNewFile = {
    fg = "#467118"
  },
  DiffOldFile = {
    fg = "#954D00"
  },
  DiffRemoved = {
    fg = "#A13F37"
  },
  DiffText = {
    bg = "#D8C2A7"
  },
  Directory = {
    bg = "NONE",
    fg = "#0090A2"
  },
  EndOfBuffer = {
    bg = "NONE",
    fg = "#D0B6B6"
  },
  Error = {
    bg = "NONE",
    fg = "#D04F4E"
  },
  ErrorMsg = {
    bg = "NONE",
    fg = "#A13F37"
  },
  Exception = {
    bg = "NONE",
    fg = "#90437A"
  },
  Float = {
    bg = "NONE",
    fg = "#805C00"
  },
  FloatBorder = {
    bg = "#F9DCD1",
    fg = "#D04F4E"
  },
  FloatTitle = {
    bg = "#F9DCD1",
    bold = true,
    fg = "#D04F4E"
  },
  FocusedSymbol = {
    bg = "NONE",
    fg = "#AC7300"
  },
  FoldColumn = {
    bg = "NONE",
    fg = "#D0B6B6"
  },
  Folded = {
    bg = "#BBC9D7",
    fg = "#937C7A"
  },
  Function = {
    bg = "NONE",
    fg = "#006E89"
  },
  FzfLuaBorder = {
    bg = "#FEEEEE",
    fg = "#D04F4E"
  },
  FzfLuaTitle = {
    bg = "#FEEEEE",
    bold = true,
    fg = "#D04F4E"
  },
  GitSignsAdd = {
    bg = "NONE",
    fg = "#569400"
  },
  GitSignsChange = {
    bg = "NONE",
    fg = "#D05312"
  },
  GitSignsDelete = {
    bg = "NONE",
    fg = "#D04F4E"
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
    fg = "#D04F4E"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#00976C"
  },
  HopNextKey2 = {
    fg = "#0090A2"
  },
  HopUnmatched = {
    fg = "#937C7A"
  },
  IblIndent = {
    fg = "#D0B6B6"
  },
  IblScope = {
    fg = "#9E7876"
  },
  IblWhitespace = {
    fg = "#D0B6B6"
  },
  Identifier = {
    bg = "NONE",
    fg = "#815654"
  },
  Ignore = {
    bg = "NONE",
    fg = "NONE"
  },
  IlluminatedWordRead = "LspReferenceRead",
  IlluminatedWordText = "LspReferenceText",
  IlluminatedWordWrite = "LspReferenceWrite",
  IncSearch = {
    bg = "#BD51A4",
    fg = "#FEEEEE"
  },
  Include = {
    bg = "NONE",
    fg = "#90437A"
  },
  IndentBlanklineChar = {
    fg = "#D0B6B6"
  },
  IndentBlanklineContextChar = {
    fg = "#9E7876"
  },
  IndentBlanklineContextStart = {
    fg = "#815654",
    underline = true
  },
  IndentBlanklineSpaceCharBlankline = {
    fg = "#D0B6B6"
  },
  IndentBlanklineSpaceshar = {
    fg = "#D0B6B6"
  },
  Italic = {
    italic = true
  },
  Keyword = {
    bg = "NONE",
    fg = "#90437A"
  },
  Label = {
    bg = "NONE",
    fg = "#006E89"
  },
  LazyButton = "CursorLine",
  LazyButtonActive = "Visual",
  LazyComment = "Comment",
  LazyCommit = {
    bold = true,
    fg = "#937C7A"
  },
  LazyCommitIssue = {
    fg = "#AC7300"
  },
  LazyCommitScope = {
    italic = true
  },
  LazyCommitType = {
    bold = true,
    fg = "#D04F4E"
  },
  LazyDimmed = "Conceal",
  LazyDir = {
    fg = "#D05312"
  },
  LazyH1 = {
    bg = "#D04F4E",
    bold = true,
    fg = "#FEEEEE"
  },
  LazyH2 = {
    bold = true,
    fg = "#D04F4E"
  },
  LazyLocal = {
    fg = "#AC7300"
  },
  LazyNoCond = "DiagnosticWarn",
  LazyNormal = "NormalFloat",
  LazyProgressDone = {
    fg = "#569400"
  },
  LazyProgressTodo = "LineNr",
  LazyProp = "Conceal",
  LazyReasonCmd = {
    fg = "#D05312"
  },
  LazyReasonEvent = {
    fg = "#AC7300"
  },
  LazyReasonFt = {
    fg = "#00976C"
  },
  LazyReasonImport = {
    fg = "#9E7876"
  },
  LazyReasonKeys = {
    fg = "#BD51A4"
  },
  LazyReasonPlugin = {
    fg = "#0090A2"
  },
  LazyReasonRuntime = {
    fg = "#AC7300"
  },
  LazyReasonSource = {
    fg = "#569400"
  },
  LazyReasonStart = {
    fg = "#D04F4E"
  },
  LazySpecial = {
    fg = "#0090A2"
  },
  LazyTaskError = {
    fg = "#D04F4E"
  },
  LazyTaskOutput = {
    fg = "#9E7876"
  },
  LazyUrl = {
    fg = "#0090A2",
    underline = true
  },
  LazyValue = {
    fg = "#569400"
  },
  LightspeedCursor = "Cursor",
  LightspeedGreyWash = "Comment",
  LightspeedLabel = {
    fg = "#D04F4E",
    underline = true
  },
  LightspeedLabelDistant = {
    fg = "#D04F4E",
    underline = true
  },
  LightspeedLabelDistantOverlapped = {
    fg = "#0090A2",
    underline = true
  },
  LightspeedLabelOverlapped = {
    fg = "#006E89",
    underline = true
  },
  LightspeedMaskedChar = {
    fg = "#569400"
  },
  LightspeedOneCharMatch = "LightspeedShortcut",
  LightspeedPendingOpArea = "IncSearch",
  LightspeedShortcut = {
    bg = "#D04F4E",
    bold = true,
    fg = "#F9DCD1",
    underline = true
  },
  LightspeedShortcutOverlapped = {
    bg = "#006E89",
    bold = true,
    fg = "#F9DCD1",
    underline = true
  },
  LightspeedUniqueChar = "LightspeedUnlabeledMatch",
  LightspeedUnlabeledMatch = {
    bold = true,
    fg = "#815654"
  },
  LineNr = {
    bg = "NONE",
    fg = "#D0B6B6"
  },
  LspCodeLens = {
    fg = "#D0B6B6"
  },
  LspCodeLensSeparator = {
    fg = "#D0B6B6"
  },
  LspReferenceRead = {
    bg = "#E7CFCA",
    fg = "NONE"
  },
  LspReferenceText = "LspReferenceRead",
  LspReferenceWrite = "LspReferenceRead",
  Macro = {
    bg = "NONE",
    fg = "#954D00"
  },
  MasonError = "ErrorMsg",
  MasonHeader = "FloatTitle",
  MasonHeaderSecondary = {
    bg = "#0090A2",
    bold = true,
    fg = "#FEEEEE"
  },
  MasonHeading = {
    bold = true
  },
  MasonHighlight = {
    fg = "#0090A2"
  },
  MasonHighlightBlock = {
    bg = "#0090A2",
    fg = "#FEEEEE"
  },
  MasonHighlightBlockBold = {
    bg = "#D04F4E",
    bold = true,
    fg = "#FEEEEE"
  },
  MasonHighlightBlockBoldSecondary = {
    bg = "#D04F4E",
    bold = true,
    fg = "#FEEEEE"
  },
  MasonHighlightBlockSecondary = {
    bg = "#D04F4E",
    fg = "#FEEEEE"
  },
  MasonHighlightSecondary = {
    fg = "#D04F4E"
  },
  MasonLink = "MasonHighlight",
  MasonMuted = {
    fg = "#D04F4E"
  },
  MasonMutedBlock = "CursorLine",
  MasonMutedBlockBold = {
    bg = "#0090A2",
    bold = true,
    fg = "#FEEEEE"
  },
  MasonNormal = "NormalFloat",
  MasonWarning = "WarningMsg",
  MatchParen = {
    bg = "NONE",
    bold = true,
    fg = "#D05312"
  },
  MiniIconsAzure = {
    fg = "#23B3C5"
  },
  MiniIconsBlue = {
    fg = "#0090A2"
  },
  MiniIconsCyan = {
    fg = "#00976C"
  },
  MiniIconsGreen = {
    fg = "#569400"
  },
  MiniIconsGrey = {
    fg = "#9E7876"
  },
  MiniIconsOrange = {
    fg = "#D05312"
  },
  MiniIconsPurple = {
    fg = "#BD51A4"
  },
  MiniIconsRed = {
    fg = "#D04F4E"
  },
  MiniIconsYellow = {
    fg = "#AC7300"
  },
  MiniStarterCurrent = {
    bold = true,
    fg = "#815654",
    underline = true
  },
  MiniStarterFooter = {
    bg = "NONE",
    fg = "#D04F4E"
  },
  MiniStarterHeader = {
    bg = "NONE",
    fg = "#D04F4E"
  },
  MiniStarterInactive = {
    fg = "#937C7A"
  },
  MiniStarterItem = {
    fg = "#9E7876"
  },
  MiniStarterItemBullet = {
    fg = "#D04F4E"
  },
  MiniStarterItemPrefix = {
    fg = "#AC7300"
  },
  MiniStarterQuery = {
    bold = true,
    fg = "#569400"
  },
  MiniStarterSection = {
    bold = true,
    fg = "#D04F4E"
  },
  ModeMsg = {
    bold = true,
    fg = "#9E7876"
  },
  MoreMsg = {
    bold = true,
    fg = "#9E7876"
  },
  NeoTreeCursorLine = "PmenuSel",
  NeoTreeDirectoryIcon = {
    fg = "#0090A2"
  },
  NeoTreeFileIcon = {
    fg = "#9E7876"
  },
  NeoTreeFileName = {
    fg = "#9E7876"
  },
  NeoTreeFileNameOpened = {
    fg = "#569400"
  },
  NeoTreeFloatBorder = {
    fg = "#F9DCD1"
  },
  NeoTreeFloatTitle = {
    bg = "#F9DCD1",
    bold = true,
    fg = "#D04F4E"
  },
  NeoTreeGitAdded = {
    fg = "#569400"
  },
  NeoTreeGitConflict = {
    fg = "#D04F4E"
  },
  NeoTreeGitDeleted = {
    fg = "#937C7A"
  },
  NeoTreeGitIgnored = {
    fg = "#9E7876"
  },
  NeoTreeGitModified = {
    fg = "#D05312"
  },
  NeoTreeGitRenamed = {
    fg = "#D05312"
  },
  NeoTreeGitStaged = {
    fg = "#00976C"
  },
  NeoTreeGitUnstaged = {
    fg = "#AC7300"
  },
  NeoTreeGitUntracked = {
    fg = "#AC7300"
  },
  NeoTreeIndentMarker = {
    fg = "#D0B6B6"
  },
  NeoTreeNormal = {
    bg = "#F9DCD1",
    fg = "#9E7876"
  },
  NeoTreeNormalNC = {
    bg = "#F9DCD1",
    fg = "#9E7876"
  },
  NeoTreeRootName = {
    bold = true,
    fg = "#815654"
  },
  NeoTreeSymbolicLinkTarget = {
    fg = "#00976C"
  },
  NeoTreeTabActive = {
    bg = "#F9DCD1",
    bold = true,
    fg = "#815654"
  },
  NeoTreeTabInactive = {
    bg = "#D8D6D5",
    fg = "#937C7A"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#F9DCD1",
    fg = "#F9DCD1"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#D8D6D5",
    fg = "#D8D6D5"
  },
  NeoTreeTitleBar = {
    bg = "#F9DCD1",
    bold = true,
    fg = "#D04F4E"
  },
  NeoTreeVertSplit = {
    bg = "#FEEEEE",
    fg = "#D8D6D5"
  },
  NeoTreeWinSeparator = {
    bg = "#FEEEEE",
    bold = true,
    fg = "#D8D6D5"
  },
  NeogitDiffAdd = {
    bg = "#FEEEEE",
    fg = "#467118"
  },
  NeogitDiffAddHighlight = {
    bg = "#FEEEEE",
    fg = "#467118"
  },
  NeogitDiffContext = {
    bg = "#F9DCD1",
    fg = "#937C7A"
  },
  NeogitDiffContextHighlight = {
    bg = "#F9DCD1"
  },
  NeogitDiffDelete = {
    bg = "#FEEEEE",
    fg = "#A13F37"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#FEEEEE",
    fg = "#A13F37"
  },
  NeogitHunkHeader = {
    bg = "#937C7A",
    fg = "#815654"
  },
  NoiceCursor = "Cursor",
  NonText = {
    bg = "NONE",
    fg = "#D0B6B6"
  },
  Normal = {
    bg = "#FEEEEE",
    fg = "#815654"
  },
  NormalFloat = {
    bg = "#F9DCD1",
    fg = "#9E7876"
  },
  NormalNC = {
    bg = "#F9DCD1",
    fg = "#815654"
  },
  NotifyBackground = {
    bg = "#FEEEEE",
    fg = "#9E7876"
  },
  NotifyDEBUGBody = {
    bg = "#F9DCD1",
    fg = "#9E7876"
  },
  NotifyDEBUGBorder = {
    bg = "#F9DCD1",
    fg = "#00976C"
  },
  NotifyDEBUGIcon = {
    bg = "#F9DCD1",
    fg = "#00976C"
  },
  NotifyDEBUGTitle = {
    bg = "#F9DCD1",
    fg = "#00976C"
  },
  NotifyERRORBody = {
    bg = "#F9DCD1",
    fg = "#9E7876"
  },
  NotifyERRORBorder = {
    bg = "#F9DCD1",
    fg = "#D04F4E"
  },
  NotifyERRORIcon = {
    bg = "#F9DCD1",
    fg = "#D04F4E"
  },
  NotifyERRORTitle = {
    bg = "#F9DCD1",
    fg = "#D04F4E"
  },
  NotifyINFOBody = {
    bg = "#F9DCD1",
    fg = "#9E7876"
  },
  NotifyINFOBorder = {
    bg = "#F9DCD1",
    fg = "#569400"
  },
  NotifyINFOIcon = {
    bg = "#F9DCD1",
    fg = "#569400"
  },
  NotifyINFOTitle = {
    bg = "#F9DCD1",
    fg = "#569400"
  },
  NotifyLogTime = {
    bg = "#F9DCD1",
    fg = "#937C7A"
  },
  NotifyLogTitle = {
    bg = "#F9DCD1",
    fg = "#0090A2"
  },
  NotifyTRACEBody = {
    bg = "#F9DCD1",
    fg = "#9E7876"
  },
  NotifyTRACEIcon = {
    bg = "#F9DCD1",
    fg = "#BD51A4"
  },
  NotifyTRACERBorder = {
    bg = "#F9DCD1",
    fg = "#BD51A4"
  },
  NotifyTRACETitle = {
    bg = "#F9DCD1",
    fg = "#BD51A4"
  },
  NotifyWARNBody = {
    bg = "#F9DCD1",
    fg = "#9E7876"
  },
  NotifyWARNBorder = {
    bg = "#F9DCD1",
    fg = "#D05312"
  },
  NotifyWARNIcon = {
    bg = "#F9DCD1",
    fg = "#D05312"
  },
  NotifyWARNTitle = {
    bg = "#F9DCD1",
    fg = "#D05312"
  },
  Number = {
    bg = "NONE",
    fg = "#954D00"
  },
  NvChAsciiHeader = {
    bg = "#FEEEEE",
    fg = "#D04F4E"
  },
  NvChSection = {
    bg = "#E7CFCA"
  },
  NvCheatsheetBlue = {
    bg = "#0090A2",
    fg = "#FEEEEE"
  },
  NvCheatsheetCyan = {
    bg = "#00976C",
    fg = "#FEEEEE"
  },
  NvCheatsheetGray = {
    bg = "#9E7876",
    fg = "#FEEEEE"
  },
  NvCheatsheetGreen = {
    bg = "#569400",
    fg = "#FEEEEE"
  },
  NvCheatsheetMagenta = {
    bg = "#90437A",
    fg = "#FEEEEE"
  },
  NvCheatsheetOrange = {
    bg = "#D05312",
    fg = "#FEEEEE"
  },
  NvCheatsheetPurple = {
    bg = "#BD51A4",
    fg = "#FEEEEE"
  },
  NvCheatsheetRed = {
    bg = "#D04F4E",
    fg = "#FEEEEE"
  },
  NvCheatsheetWhite = {
    bg = "#D04F4E",
    fg = "#FEEEEE"
  },
  NvCheatsheetYellow = {
    bg = "#AC7300",
    fg = "#FEEEEE"
  },
  NvimTreeEndOfBuffer = {
    fg = "#FEEEEE"
  },
  NvimTreeExecFile = {
    fg = "#467118"
  },
  NvimTreeFolderIcon = {
    fg = "#006E89"
  },
  NvimTreeGitDeleted = {
    fg = "#A13F37"
  },
  NvimTreeGitDirty = {
    fg = "#A13F37"
  },
  NvimTreeGitMerge = {
    fg = "#954D00"
  },
  NvimTreeGitNew = {
    fg = "#805C00"
  },
  NvimTreeGitRenamed = {
    fg = "#90437A"
  },
  NvimTreeGitStaged = {
    fg = "#467118"
  },
  NvimTreeImageFile = {
    fg = "#90437A"
  },
  NvimTreeNormal = {
    bg = "#D8D6D5"
  },
  NvimTreeNormalNC = {
    bg = "#D8D6D5"
  },
  NvimTreeOpenedFile = {
    fg = "#467118"
  },
  NvimTreeRootFolder = {
    fg = "#FEEEEE"
  },
  NvimTreeSpecialFile = {
    fg = "#805C00"
  },
  NvimTreeSymlink = {
    fg = "#007652"
  },
  NvimTreeVertSplit = {
    bg = "#D8D6D5",
    fg = "#D8D6D5"
  },
  Operator = {
    bg = "NONE",
    fg = "#815654"
  },
  Pmenu = {
    bg = "#F9DCD1",
    fg = "#9E7876"
  },
  PmenuSbar = {
    bg = "#F9DCD1",
    fg = "NONE"
  },
  PmenuSel = {
    bg = "#BBC9D7",
    blend = 0,
    bold = true
  },
  PmenuThumb = {
    bg = "#D04F4E",
    blend = 0,
    fg = "NONE"
  },
  PreCondit = {
    bg = "NONE",
    fg = "#006E89"
  },
  PreProc = {
    bg = "NONE",
    fg = "#805C00"
  },
  Question = {
    bg = "NONE",
    fg = "#BD51A4"
  },
  QuickFixLine = {
    bg = "#AC7300",
    fg = "#FEEEEE"
  },
  RainbowDelimiterBlue = {
    fg = "#006E89"
  },
  RainbowDelimiterCyan = {
    fg = "#007652"
  },
  RainbowDelimiterGreen = {
    fg = "#467118"
  },
  RainbowDelimiterOrange = {
    fg = "#954D00"
  },
  RainbowDelimiterRed = {
    fg = "#A13F37"
  },
  RainbowDelimiterViolet = {
    fg = "#90437A"
  },
  RainbowDelimiterYellow = {
    fg = "#805C00"
  },
  RenderMarkDownBullet = {
    link = "@markup.list.markdown"
  },
  RenderMarkDownLink = {
    bold = true,
    fg = "#0090A2"
  },
  RenderMarkdownChecked = {
    link = "@markup.list.checked"
  },
  RenderMarkdownCode = {
    bg = "#F9DCD1"
  },
  RenderMarkdownH1 = {
    link = "@markup.heading.1.markdown"
  },
  RenderMarkdownH1Bg = {
    bg = "#E3C3D1",
    bold = true,
    fg = "#90437A"
  },
  RenderMarkdownH2 = {
    link = "@markup.heading.2.markdown"
  },
  RenderMarkdownH2Bg = {
    bg = "#BFCED5",
    bold = true,
    fg = "#006E89"
  },
  RenderMarkdownH3 = {
    link = "@markup.heading.3.markdown"
  },
  RenderMarkdownH3Bg = {
    bg = "#BFD0C7",
    bold = true,
    fg = "#007652"
  },
  RenderMarkdownH4 = {
    link = "@markup.heading.4.markdown"
  },
  RenderMarkdownH4Bg = {
    bg = "#D0CFB9",
    bold = true,
    fg = "#467118"
  },
  RenderMarkdownH5 = {
    link = "@markup.heading.5.markdown"
  },
  RenderMarkdownH5Bg = {
    bg = "#DFCAB3",
    bold = true,
    fg = "#805C00"
  },
  RenderMarkdownH6 = {
    link = "@markup.heading.6.markdown"
  },
  RenderMarkdownH6Bg = {
    bg = "#DFCAB3",
    bold = true,
    fg = "#90437A"
  },
  RenderMarkdownTodo = {
    bold = true,
    fg = "#569400"
  },
  RenderMarkdownUnchecked = {
    link = "@markup.list.unchecked"
  },
  Repeat = {
    bg = "NONE",
    fg = "#90437A"
  },
  Search = {
    bg = "#BBC9D7",
    fg = "NONE"
  },
  SignColumn = {
    bg = "NONE",
    fg = "NONE"
  },
  Special = {
    bg = "NONE",
    fg = "#006E89"
  },
  SpecialChar = {
    bg = "NONE",
    fg = "#006E89"
  },
  SpecialComment = {
    bg = "NONE",
    fg = "#D0B6B6"
  },
  SpecialKey = {
    bg = "NONE",
    fg = "#9E7876"
  },
  SpellBad = {
    sp = "#D04F4E",
    undercurl = true
  },
  SpellCap = {
    sp = "#AC7300",
    undercurl = true
  },
  SpellLocal = {
    sp = "#0090A2",
    undercurl = true
  },
  SpellRare = {
    sp = "#569400",
    undercurl = true
  },
  SpotlightBorder = {
    bg = "#FEEEEE",
    fg = "#D04F4E"
  },
  SpotlightNormal = {
    bg = "#FEEEEE",
    fg = "#9E7876"
  },
  SpotlightNormalNC = {
    bg = "#F9DCD1",
    fg = "#815654"
  },
  SpotlightTitle = {
    bg = "#FEEEEE",
    bold = true,
    fg = "#D04F4E"
  },
  SpotlightWinSeparator = {
    bg = "#F9DCD1",
    fg = "#F9DCD1"
  },
  Statement = {
    bg = "NONE",
    fg = "#90437A"
  },
  StatusCommand = {
    bg = "#AC7300",
    fg = "#D8D6D5"
  },
  StatusInactive = {
    bg = "#937C7A",
    fg = "#D8D6D5"
  },
  StatusInsert = {
    bg = "#569400",
    fg = "#D8D6D5"
  },
  StatusLine = {
    bg = "#D8D6D5",
    fg = "#9E7876"
  },
  StatusLineNC = {
    bg = "NONE",
    fg = "#937C7A"
  },
  StatusNormal = {
    bg = "#0090A2",
    fg = "#D8D6D5"
  },
  StatusReplace = {
    bg = "#D04F4E",
    fg = "#D8D6D5"
  },
  StatusTerminal = "StatusInsert",
  StatusVisual = {
    bg = "#BD51A4",
    fg = "#D8D6D5"
  },
  StorageClass = {
    bg = "NONE",
    fg = "#006E89"
  },
  String = {
    bg = "NONE",
    fg = "#467118"
  },
  Structure = {
    bg = "NONE",
    fg = "#805C00"
  },
  Substitute = {
    bg = "#D04F4E",
    bold = true,
    fg = "#FEEEEE"
  },
  TSRainbowBlue = {
    fg = "#006E89"
  },
  TSRainbowCyan = {
    fg = "#007652"
  },
  TSRainbowGreen = {
    fg = "#467118"
  },
  TSRainbowOrange = {
    fg = "#954D00"
  },
  TSRainbowRed = {
    fg = "#A13F37"
  },
  TSRainbowViolet = {
    fg = "#90437A"
  },
  TSRainbowYellow = {
    fg = "#805C00"
  },
  TabLine = {
    bg = "#D8D6D5",
    fg = "#937C7A"
  },
  TabLineFill = {
    bg = "#D8D6D5",
    fg = "NONE"
  },
  TabLineSel = {
    bg = "#FEEEEE",
    bold = true,
    fg = "#815654",
    italic = true
  },
  Tag = {
    bg = "NONE",
    fg = "#006E89"
  },
  TelescopeMatching = {
    bold = true,
    fg = "#D04F4E"
  },
  TelescopeMultiIcon = {
    fg = "#0090A2"
  },
  TelescopeMultiSelection = {
    fg = "#006E89"
  },
  TelescopePreviewBorder = {
    bg = "#FEEEEE",
    fg = "#D04F4E"
  },
  TelescopePreviewNormal = {
    bg = "#FEEEEE",
    fg = "#9E7876"
  },
  TelescopePreviewTitle = {
    bg = "#FEEEEE",
    bold = true,
    fg = "#D04F4E"
  },
  TelescopePromptBorder = {
    bg = "#FEEEEE",
    fg = "#D04F4E"
  },
  TelescopePromptNormal = {
    bg = "#FEEEEE",
    fg = "#9E7876"
  },
  TelescopePromptPrefix = {
    fg = "#D04F4E"
  },
  TelescopePromptTitle = {
    bg = "#D8D6D5",
    bold = true,
    fg = "#D04F4E"
  },
  TelescopeResultsBorder = {
    bg = "#FEEEEE",
    fg = "#D04F4E"
  },
  TelescopeResultsNormal = {
    bg = "#FEEEEE",
    fg = "#9E7876"
  },
  TelescopeResultsTitle = {
    bg = "#FEEEEE",
    bold = true,
    fg = "#D04F4E"
  },
  TelescopeSelection = "PmenuSel",
  TelescopeSelectionCaret = {
    fg = "#D04F4E"
  },
  Terminal = {
    bg = "#FEEEEE",
    fg = "#9E7876"
  },
  Title = {
    bg = "#F9DCD1",
    bold = true,
    fg = "#D04F4E"
  },
  Todo = {
    bg = "NONE",
    fg = "#AC7300"
  },
  Type = {
    bg = "NONE",
    fg = "#006E89"
  },
  Typedef = {
    bg = "NONE",
    fg = "#805C00"
  },
  Underlined = {
    bg = "NONE",
    fg = "#007652",
    underline = true
  },
  VertSplit = {
    bg = "#FEEEEE",
    fg = "#D8D6D5"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#805C00"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#954D00"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#467118"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#006E89"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#007652"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#805C00"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#90437A"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#D0B6B6"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#007652"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#954D00"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#D0B6B6"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#954D00"
  },
  Visual = {
    bg = "#BBC9D7",
    fg = "NONE"
  },
  VisualNOS = {
    bg = "NONE",
    fg = "#BBC9D7"
  },
  WarningMsg = {
    bg = "NONE",
    fg = "#AC7300"
  },
  WhichKey = {
    fg = "#00976C"
  },
  WhichKeyBorder = "FloatBorder",
  WhichKeyDesc = {
    fg = "#BD51A4"
  },
  WhichKeyFloat = "NormalFloat",
  WhichKeyGroup = {
    fg = "#0090A2"
  },
  WhichKeySeparator = {
    fg = "#D0B6B6"
  },
  WhichKeyValue = {
    fg = "#815654"
  },
  WildMenu = {
    bg = "#D04F4E",
    fg = "#FEEEEE"
  },
  WinBar = {
    bg = "NONE",
    fg = "#926461"
  },
  WinBarNC = {
    bg = "#F9DCD1",
    fg = "#937C7A"
  },
  WinSeparator = {
    bg = "#FEEEEE",
    bold = false,
    fg = "#D8D6D5"
  },
  WindowPickerStatusLine = {
    fg = "#D04F4E"
  },
  WindowPickerStatusLineNC = {
    fg = "#D04F4E"
  },
  WindowPickerWinBar = {
    fg = "#D04F4E"
  },
  WindowPickerWinBarNC = {
    fg = "#D04F4E"
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
