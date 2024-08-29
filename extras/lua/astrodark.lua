local colors = {
  _style = "astrodark",
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
    blue = "#5EB7FF",
    comment = "#696C76",
    cyan = "#4AC2B8",
    green = "#87C05F",
    mute = "#595C66",
    orange = "#F5983A",
    purple = "#DD97F1",
    red = "#FF838B",
    text = "#ADB0BB",
    yellow = "#DFAB25"
  },
  term = {
    background = "#1A1D23",
    black = "#111317",
    blue = "#5EB7FF",
    bright_black = "#34363A",
    bright_blue = "#81DAFF",
    bright_cyan = "#6DE5DB",
    bright_green = "#AAE382",
    bright_purple = "#FFBAFF",
    bright_red = "#FFA6AE",
    bright_white = "#D0D3DE",
    bright_yellow = "#FFCE48",
    cyan = "#4AC2B8",
    foreground = "#9B9FA9",
    green = "#87C05F",
    purple = "#DD97F1",
    red = "#FF838B",
    white = "#9B9FA9",
    yellow = "#DFAB25"
  },
  ui = {
    accent = "#50A4E9",
    base = "#1A1D23",
    blue = "#50A4E9",
    border = "#3A3E47",
    current_line = "#1E222A",
    cyan = "#00B298",
    float = "#14161B",
    green = "#75AD47",
    highlight = "#23272F",
    inactive_base = "#16181D",
    menu_selection = "#26343F",
    none_text = "#3A3E47",
    orange = "#EB8332",
    prompt = "#21242A",
    purple = "#CC83E3",
    red = "#F8747E",
    scrollbar = "#50A4E9",
    selection = "#26343F",
    split = "#111317",
    statusline = "#111317",
    tabline = "#111317",
    text = "#9B9FA9",
    text_active = "#ADB0BB",
    text_inactive = "#494D56",
    text_match = "#E0E0Ee",
    title = "#50A4E9",
    tool = "#16181D",
    winbar = "#797D87",
    yellow = "#D09214"
  }
}

local highlights = {
  ["@annotation"] = {
    fg = "#DFAB25"
  },
  ["@attribute"] = {
    fg = "#DFAB25"
  },
  ["@attribute.builtin"] = "@attribute",
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.special"] = "SpecialChar",
  ["@class"] = {
    fg = "#5EB7FF"
  },
  ["@comment"] = "Comment",
  ["@comment.documentation"] = "@comment",
  ["@comment.error"] = {
    bg = "#F8747E",
    fg = "#1A1D23"
  },
  ["@comment.hint"] = {
    bg = "#50A4E9",
    fg = "#1A1D23"
  },
  ["@comment.info"] = {
    bg = "#00B298",
    fg = "#1A1D23"
  },
  ["@comment.todo"] = {
    bg = "#D09214",
    fg = "#1A1D23"
  },
  ["@comment.warning"] = {
    bg = "#EB8332",
    fg = "#1A1D23"
  },
  ["@conditional"] = "@keyword.conditional",
  ["@conditional.ternary"] = "@keyword.conditional.ternary",
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "@constant",
  ["@constant.macro"] = "@constant",
  ["@constant.rust"] = {
    fg = "#4AC2B8"
  },
  ["@constructor"] = "@function",
  ["@constructor.lua"] = {
    fg = "#F5983A"
  },
  ["@constructor.tsx"] = {
    fg = "#DD97F1"
  },
  ["@constructor.typescript"] = {
    fg = "#DD97F1"
  },
  ["@debug"] = "@keyword.debug",
  ["@decorator"] = {
    fg = "#F5983A"
  },
  ["@define"] = "@keyword.directive.define",
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdded",
  ["@enum"] = {
    fg = "#4AC2B8"
  },
  ["@enumMember"] = {
    fg = "#F5983A"
  },
  ["@error"] = "Error",
  ["@event"] = {
    fg = "#F5983A"
  },
  ["@exception"] = "@keyword.exception",
  ["@field"] = "@variable.member",
  ["@field.yaml"] = {
    fg = "#FF838B"
  },
  ["@float"] = "@number.float",
  ["@function"] = "Function",
  ["@function.builtin"] = {
    fg = "#4AC2B8"
  },
  ["@function.call"] = "@function",
  ["@function.macro"] = {
    fg = "#DFAB25"
  },
  ["@function.macro.rust"] = {
    fg = "#FF838B"
  },
  ["@function.method"] = "@function",
  ["@function.method.call"] = "@function.method",
  ["@function.method.call.php"] = "Function",
  ["@function.method.php"] = "Function",
  ["@include"] = "@keyword.include",
  ["@interface"] = {
    fg = "#F5983A"
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
    fg = "#5EB7FF"
  },
  ["@literal.markdown"] = {
    fg = "#87C05F"
  },
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@punctuation.special",
  ["@lsp.type.function.rust"] = {
    fg = "#ADB0BB"
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
    fg = "#ADB0BB"
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
    fg = "#F5983A"
  },
  ["@markup.heading"] = {
    bold = true,
    fg = "#ADB0BB"
  },
  ["@markup.heading.1.markdown"] = {
    bold = true,
    fg = "#DD97F1"
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = "#5EB7FF"
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = "#4AC2B8"
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = "#87C05F"
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = "#DFAB25"
  },
  ["@markup.italic"] = {
    fg = "#ADB0BB",
    italic = true
  },
  ["@markup.link"] = {
    bold = true,
    fg = "#DFAB25"
  },
  ["@markup.link.label"] = "String",
  ["@markup.link.url"] = {
    fg = "#5EB7FF",
    italic = true,
    underline = true
  },
  ["@markup.list"] = "Special",
  ["@markup.list.checked"] = {
    bg = "#75AD47",
    fg = "#1A1D23"
  },
  ["@markup.list.unchecked"] = {
    bg = "#CC83E3",
    fg = "#1A1D23"
  },
  ["@markup.math"] = {
    fg = "#5EB7FF"
  },
  ["@markup.quote"] = {
    fg = "#ADB0BB",
    italic = true
  },
  ["@markup.raw"] = {
    fg = "#FF838B"
  },
  ["@markup.raw.block"] = {
    fg = "#ADB0BB"
  },
  ["@markup.strikethrough"] = {
    fg = "#ADB0BB",
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true,
    fg = "#ADB0BB"
  },
  ["@markup.underline"] = "Underline",
  ["@method"] = "@function",
  ["@method.call"] = "@function.method",
  ["@method.call.php"] = "@function.method.call.php",
  ["@method.php"] = "@function.method.php",
  ["@modifier"] = {
    fg = "#F5983A"
  },
  ["@module"] = "Keyword",
  ["@module.builtin"] = {
    fg = "#DFAB25"
  },
  ["@module.rust"] = {
    fg = "#DD97F1"
  },
  ["@namespace"] = "@module",
  ["@namespace.builtin"] = "@module.builtin",
  ["@namespace.rust"] = "@module.rust",
  ["@none.markdown"] = {
    fg = "#ADB0BB"
  },
  ["@number"] = "Number",
  ["@number.css"] = {
    fg = "#4AC2B8"
  },
  ["@number.float"] = "Float",
  ["@operator"] = "Operator",
  ["@parameter"] = "@variable.parameter",
  ["@preproc"] = "@keyword.directive",
  ["@property"] = {
    fg = "#FF838B"
  },
  ["@property.class.css"] = {
    fg = "#DFAB25"
  },
  ["@property.cpp"] = {
    fg = "#F5983A"
  },
  ["@property.css"] = {
    fg = "#F5983A"
  },
  ["@property.id.css"] = {
    fg = "#5EB7FF"
  },
  ["@property.toml"] = {
    fg = "#FF838B"
  },
  ["@punctuation.bracket"] = {
    fg = "#ADB0BB"
  },
  ["@punctuation.delimiter"] = {
    fg = "#ADB0BB"
  },
  ["@punctuation.delimiter.markdown"] = "@punctuation.delimiter",
  ["@punctuation.special"] = {
    fg = "#ADB0BB"
  },
  ["@punctuation.special.markdown"] = "@punctuation.special",
  ["@punctuation.special.rust"] = {
    fg = "#DD97F1"
  },
  ["@regexp"] = {
    fg = "#4AC2B8"
  },
  ["@repeat"] = "@keyword.repeat",
  ["@storageclass"] = "@keyword.storageclass",
  ["@string"] = "String",
  ["@string.documentation"] = "String",
  ["@string.escape"] = {
    fg = "#FF838B"
  },
  ["@string.plain.css"] = {
    fg = "#87C05F"
  },
  ["@string.regex"] = "@string.regexp",
  ["@string.regexp"] = "String",
  ["@string.special"] = "String",
  ["@string.special.path"] = "String",
  ["@string.special.symbol"] = "String",
  ["@string.special.symbol.ruby"] = {
    fg = "#F5983A"
  },
  ["@string.special.url"] = "@markup.link.url",
  ["@struct"] = {
    fg = "#5EB7FF"
  },
  ["@symbol"] = "@string.special.symbol",
  ["@symbol.ruby"] = "@string.special.symbol.ruby",
  ["@tag"] = {
    fg = "#FF838B"
  },
  ["@tag.attribute"] = {
    fg = "#4AC2B8"
  },
  ["@tag.attribute.tsx"] = {
    fg = "#DD97F1",
    italic = true
  },
  ["@tag.delimiter"] = {
    fg = "#ADB0BB"
  },
  ["@text"] = {
    fg = "#ADB0BB"
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
    fg = "#DFAB25"
  },
  ["@type.css"] = {
    fg = "#F5983A"
  },
  ["@type.definition"] = "@type",
  ["@type.qualifier"] = "@type",
  ["@type.qualifier.php"] = "Keyword",
  ["@type.qualifier.typescript"] = "Keyword",
  ["@type.rust"] = {
    fg = "#4AC2B8"
  },
  ["@type.tag.css"] = {
    fg = "#DD97F1"
  },
  ["@typeParameter"] = {
    fg = "#DFAB25"
  },
  ["@variable"] = "Identifier",
  ["@variable.builtin"] = {
    bold = false,
    fg = "#4AC2B8"
  },
  ["@variable.lua"] = "@variable",
  ["@variable.member"] = "@property",
  ["@variable.parameter"] = {
    fg = "#F5983A"
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
    fg = "#3A3E47"
  },
  AerialInterfaceIcon = "@type",
  AerialKeyIcon = "@type",
  AerialLine = {
    bg = "NONE",
    fg = "#50A4E9"
  },
  AerialMethodIcon = "@method",
  AerialModuleIcon = "@namespace",
  AerialNamespaceIcon = "@namespace",
  AerialNormal = {
    fg = "#9B9FA9"
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
    fg = "#1A1D23"
  },
  AvanteReversedThirdTitle = {
    fg = "#1A1D23"
  },
  AvanteReversedTitle = {
    fg = "#1A1D23"
  },
  AvanteSubtitle = {
    bg = "#1A1D23",
    fg = "#75AD47"
  },
  AvanteThirdTitle = {
    bg = "#1A1D23",
    fg = "#D09214"
  },
  AvanteTitle = {
    bg = "#1A1D23",
    fg = "#50A4E9"
  },
  Beacon = {
    bg = "#5EB7FF"
  },
  Bold = {
    bold = true
  },
  Boolean = {
    bg = "NONE",
    fg = "#F5983A"
  },
  BufferLineBufferSelected = {
    bg = "#1A1D23",
    bold = true,
    fg = "#ADB0BB"
  },
  BufferLineBufferVisible = {
    bg = "#1A1D23",
    fg = "#494D56"
  },
  BufferLineCloseButtonSelected = {
    bg = "#111317",
    fg = "#F8747E"
  },
  BufferLineCloseButtonVisible = {
    bg = "#111317",
    fg = "#F8747E"
  },
  BufferLineError = {
    bg = "#F8747E",
    fg = "#F8747E"
  },
  BufferLineErrorDiagnostic = {
    bg = "#F8747E",
    fg = "#F8747E"
  },
  BufferLineIndicatorSelected = {
    bg = "#1A1D23",
    fg = "#1A1D23"
  },
  BufferLineModified = {
    bg = "#111317",
    fg = "#75AD47"
  },
  BufferLineModifiedSelected = {
    bg = "#1A1D23",
    fg = "#75AD47"
  },
  BufferLineModifiedVisible = {
    bg = "#1A1D23",
    fg = "#9B9FA9"
  },
  BufferLineTab = {
    bg = "#111317",
    fg = "#494D56"
  },
  BufferLineTabClose = {
    bg = "#111317",
    fg = "#F8747E"
  },
  BufferLineTabSelected = {
    bg = "#111317",
    fg = "#9B9FA9"
  },
  Character = {
    bg = "NONE",
    fg = "#87C05F"
  },
  CmpItemAbbr = {
    fg = "#9B9FA9"
  },
  CmpItemAbbrDeprecated = {
    fg = "#FF838B",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bold = true,
    fg = "#E0E0Ee"
  },
  CmpItemAbbrMatchFuzzy = {
    bold = true,
    fg = "#E0E0Ee"
  },
  CmpItemKimdStruct = "@type",
  CmpItemKind = {
    fg = "#DFAB25"
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
    bg = "#1E222A",
    fg = "NONE"
  },
  Comment = {
    bg = "NONE",
    fg = "#696C76",
    italic = true
  },
  Conceal = {
    bg = "NONE",
    fg = "#494D56"
  },
  Conditional = {
    bg = "NONE",
    fg = "#DD97F1"
  },
  Constant = {
    bg = "NONE",
    fg = "#DFAB25"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#9B9FA9",
    fg = "#1A1D23"
  },
  CursorColumn = {
    bg = "#1E222A",
    fg = "NONE"
  },
  CursorIM = "Cursor",
  CursorLine = {
    bg = "#1E222A",
    fg = "NONE"
  },
  CursorLineNr = {
    bg = "NONE",
    fg = "#ADB0BB"
  },
  DapUIBreakpointsCurrentLine = {
    bold = true,
    fg = "#D09214"
  },
  DapUIBreakpointsDisabledLine = "Comment",
  DapUIBreakpointsInfo = {
    fg = "#CC83E3"
  },
  DapUIBreakpointsLine = "DapUILineNumber",
  DapUIBreakpointsPath = "Title",
  DapUIDecoration = {
    fg = "#3A3E47"
  },
  DapUIFloatBorder = "FloatBorder",
  DapUIFrameName = "Normal",
  DapUILineNumber = "Number",
  DapUIModifiedValue = {
    bold = true,
    fg = "#D09214"
  },
  DapUIPlayPause = {
    fg = "#75AD47"
  },
  DapUIRestart = {
    fg = "#D09214"
  },
  DapUIScope = "Title",
  DapUISource = "Keyword",
  DapUIStepBack = {
    fg = "#50A4E9"
  },
  DapUIStepInto = {
    fg = "#50A4E9"
  },
  DapUIStepOut = {
    fg = "#50A4E9"
  },
  DapUIStepOver = {
    fg = "#50A4E9"
  },
  DapUIStop = {
    fg = "#F8747E"
  },
  DapUIStoppedThread = "Title",
  DapUIThread = "String",
  DapUIType = "Type",
  DapUIValue = {
    fg = "#FF838B"
  },
  DapUIVariable = "Identifier",
  DapUIWatchesEmpty = {
    fg = "#F8747E"
  },
  DapUIWatchesError = {
    fg = "#F8747E"
  },
  DapUIWatchesValue = {
    fg = "#EB8332"
  },
  DashboardCenter = {
    fg = "#5EB7FF"
  },
  DashboardFooter = {
    fg = "#4AC2B8"
  },
  DashboardHeader = {
    fg = "#4AC2B8"
  },
  DashboardShortcut = {
    fg = "#DFAB25"
  },
  Debug = {
    bg = "NONE",
    fg = "#50A4E9"
  },
  Define = {
    bg = "NONE",
    fg = "#DD97F1"
  },
  Delimiter = {
    bg = "NONE",
    fg = "#5EB7FF"
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
    fg = "#F8747E"
  },
  DiagnosticHint = {
    fg = "#00B298"
  },
  DiagnosticInfo = {
    fg = "#50A4E9"
  },
  DiagnosticOk = {
    fg = "#75AD47"
  },
  DiagnosticUnderlineError = {
    sp = "#F8747E",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#00B298",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#50A4E9",
    undercurl = true
  },
  DiagnosticUnderlineOk = {
    sp = "#75AD47",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#D09214",
    undercurl = true
  },
  DiagnosticWarn = {
    fg = "#D09214"
  },
  DiffAdd = {
    bg = "#354632"
  },
  DiffAdded = {
    fg = "#87C05F"
  },
  DiffChange = {
    bg = "#4B4124"
  },
  DiffChanged = {
    fg = "#5EB7FF"
  },
  DiffDelete = {
    bg = "#53373D"
  },
  DiffFile = {
    fg = "#5EB7FF"
  },
  DiffIndexLine = {
    fg = "#4AC2B8"
  },
  DiffLine = {
    fg = "#ADB0BB"
  },
  DiffNewFile = {
    fg = "#87C05F"
  },
  DiffOldFile = {
    fg = "#F5983A"
  },
  DiffRemoved = {
    fg = "#FF838B"
  },
  DiffText = {
    bg = "#554824"
  },
  Directory = {
    bg = "NONE",
    fg = "#50A4E9"
  },
  EndOfBuffer = {
    bg = "NONE",
    fg = "#3A3E47"
  },
  Error = {
    bg = "NONE",
    fg = "#F8747E"
  },
  ErrorMsg = {
    bg = "NONE",
    fg = "#FF838B"
  },
  Exception = {
    bg = "NONE",
    fg = "#DD97F1"
  },
  Float = {
    bg = "NONE",
    fg = "#DFAB25"
  },
  FloatBorder = {
    bg = "#14161B",
    fg = "#3A3E47"
  },
  FloatTitle = {
    bg = "#14161B",
    bold = true,
    fg = "#50A4E9"
  },
  FocusedSymbol = {
    bg = "NONE",
    fg = "#D09214"
  },
  FoldColumn = {
    bg = "NONE",
    fg = "#3A3E47"
  },
  Folded = {
    bg = "NONE",
    fg = "#3A3E47"
  },
  Function = {
    bg = "NONE",
    fg = "#5EB7FF"
  },
  FzfLuaBorder = {
    bg = "#1A1D23",
    fg = "#3A3E47"
  },
  FzfLuaTitle = {
    bg = "#1A1D23",
    bold = true,
    fg = "#50A4E9"
  },
  GitSignsAdd = {
    bg = "NONE",
    fg = "#75AD47"
  },
  GitSignsChange = {
    bg = "NONE",
    fg = "#EB8332"
  },
  GitSignsDelete = {
    bg = "NONE",
    fg = "#F8747E"
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
    fg = "#F8747E"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#00B298"
  },
  HopNextKey2 = {
    fg = "#50A4E9"
  },
  HopUnmatched = {
    fg = "#595C66"
  },
  IblIndent = {
    fg = "#3A3E47"
  },
  IblScope = {
    fg = "#9B9FA9"
  },
  IblWhitespace = {
    fg = "#3A3E47"
  },
  Identifier = {
    bg = "NONE",
    fg = "#ADB0BB"
  },
  Ignore = {
    bg = "NONE",
    fg = "NONE"
  },
  IlluminatedWordRead = "LspReferenceRead",
  IlluminatedWordText = "LspReferenceText",
  IlluminatedWordWrite = "LspReferenceWrite",
  IncSearch = {
    bg = "#CC83E3",
    fg = "#1A1D23"
  },
  Include = {
    bg = "NONE",
    fg = "#DD97F1"
  },
  IndentBlanklineChar = {
    fg = "#3A3E47"
  },
  IndentBlanklineContextChar = {
    fg = "#9B9FA9"
  },
  IndentBlanklineContextStart = {
    fg = "#ADB0BB",
    underline = true
  },
  IndentBlanklineSpaceCharBlankline = {
    fg = "#3A3E47"
  },
  IndentBlanklineSpaceshar = {
    fg = "#3A3E47"
  },
  Italic = {
    italic = true
  },
  Keyword = {
    bg = "NONE",
    fg = "#DD97F1"
  },
  Label = {
    bg = "NONE",
    fg = "#5EB7FF"
  },
  LazyButton = "CursorLine",
  LazyButtonActive = "Visual",
  LazyComment = "Comment",
  LazyCommit = {
    bold = true,
    fg = "#494D56"
  },
  LazyCommitIssue = {
    fg = "#D09214"
  },
  LazyCommitScope = {
    italic = true
  },
  LazyCommitType = {
    bold = true,
    fg = "#50A4E9"
  },
  LazyDimmed = "Conceal",
  LazyDir = {
    fg = "#EB8332"
  },
  LazyH1 = {
    bg = "#50A4E9",
    bold = true,
    fg = "#1A1D23"
  },
  LazyH2 = {
    bold = true,
    fg = "#50A4E9"
  },
  LazyLocal = {
    fg = "#D09214"
  },
  LazyNoCond = "DiagnosticWarn",
  LazyNormal = "NormalFloat",
  LazyProgressDone = {
    fg = "#75AD47"
  },
  LazyProgressTodo = "LineNr",
  LazyProp = "Conceal",
  LazyReasonCmd = {
    fg = "#EB8332"
  },
  LazyReasonEvent = {
    fg = "#D09214"
  },
  LazyReasonFt = {
    fg = "#00B298"
  },
  LazyReasonImport = {
    fg = "#9B9FA9"
  },
  LazyReasonKeys = {
    fg = "#CC83E3"
  },
  LazyReasonPlugin = {
    fg = "#50A4E9"
  },
  LazyReasonRuntime = {
    fg = "#D09214"
  },
  LazyReasonSource = {
    fg = "#75AD47"
  },
  LazyReasonStart = {
    fg = "#F8747E"
  },
  LazySpecial = {
    fg = "#50A4E9"
  },
  LazyTaskError = {
    fg = "#F8747E"
  },
  LazyTaskOutput = {
    fg = "#9B9FA9"
  },
  LazyUrl = {
    fg = "#50A4E9",
    underline = true
  },
  LazyValue = {
    fg = "#75AD47"
  },
  LightspeedCursor = "Cursor",
  LightspeedGreyWash = "Comment",
  LightspeedLabel = {
    fg = "#F8747E",
    underline = true
  },
  LightspeedLabelDistant = {
    fg = "#F8747E",
    underline = true
  },
  LightspeedLabelDistantOverlapped = {
    fg = "#50A4E9",
    underline = true
  },
  LightspeedLabelOverlapped = {
    fg = "#5EB7FF",
    underline = true
  },
  LightspeedMaskedChar = {
    fg = "#75AD47"
  },
  LightspeedOneCharMatch = "LightspeedShortcut",
  LightspeedPendingOpArea = "IncSearch",
  LightspeedShortcut = {
    bg = "#F8747E",
    bold = true,
    fg = "#16181D",
    underline = true
  },
  LightspeedShortcutOverlapped = {
    bg = "#5EB7FF",
    bold = true,
    fg = "#16181D",
    underline = true
  },
  LightspeedUniqueChar = "LightspeedUnlabeledMatch",
  LightspeedUnlabeledMatch = {
    bold = true,
    fg = "#ADB0BB"
  },
  LineNr = {
    bg = "NONE",
    fg = "#3A3E47"
  },
  LspCodeLens = {
    fg = "#3A3E47"
  },
  LspCodeLensSeparator = {
    fg = "#3A3E47"
  },
  LspReferenceRead = {
    bg = "#23272F",
    fg = "NONE"
  },
  LspReferenceText = "LspReferenceRead",
  LspReferenceWrite = "LspReferenceRead",
  Macro = {
    bg = "NONE",
    fg = "#F5983A"
  },
  MasonError = "ErrorMsg",
  MasonHeader = "FloatTitle",
  MasonHeaderSecondary = {
    bg = "#50A4E9",
    bold = true,
    fg = "#1A1D23"
  },
  MasonHeading = {
    bold = true
  },
  MasonHighlight = {
    fg = "#50A4E9"
  },
  MasonHighlightBlock = {
    bg = "#50A4E9",
    fg = "#1A1D23"
  },
  MasonHighlightBlockBold = {
    bg = "#50A4E9",
    bold = true,
    fg = "#1A1D23"
  },
  MasonHighlightBlockBoldSecondary = {
    bg = "#50A4E9",
    bold = true,
    fg = "#1A1D23"
  },
  MasonHighlightBlockSecondary = {
    bg = "#50A4E9",
    fg = "#1A1D23"
  },
  MasonHighlightSecondary = {
    fg = "#50A4E9"
  },
  MasonLink = "MasonHighlight",
  MasonMuted = {
    fg = "#F8747E"
  },
  MasonMutedBlock = "CursorLine",
  MasonMutedBlockBold = {
    bg = "#50A4E9",
    bold = true,
    fg = "#1A1D23"
  },
  MasonNormal = "NormalFloat",
  MasonWarning = "WarningMsg",
  MatchParen = {
    bg = "NONE",
    bold = true,
    fg = "#EB8332"
  },
  MiniIconsAzure = {
    fg = "#73C7FF"
  },
  MiniIconsBlue = {
    fg = "#50A4E9"
  },
  MiniIconsCyan = {
    fg = "#00B298"
  },
  MiniIconsGreen = {
    fg = "#75AD47"
  },
  MiniIconsGrey = {
    fg = "#9B9FA9"
  },
  MiniIconsOrange = {
    fg = "#EB8332"
  },
  MiniIconsPurple = {
    fg = "#CC83E3"
  },
  MiniIconsRed = {
    fg = "#F8747E"
  },
  MiniIconsYellow = {
    fg = "#D09214"
  },
  MiniStarterCurrent = {
    bold = true,
    fg = "#ADB0BB",
    underline = true
  },
  MiniStarterFooter = {
    bg = "NONE",
    fg = "#50A4E9"
  },
  MiniStarterHeader = {
    bg = "NONE",
    fg = "#50A4E9"
  },
  MiniStarterInactive = {
    fg = "#494D56"
  },
  MiniStarterItem = {
    fg = "#9B9FA9"
  },
  MiniStarterItemBullet = {
    fg = "#50A4E9"
  },
  MiniStarterItemPrefix = {
    fg = "#D09214"
  },
  MiniStarterQuery = {
    bold = true,
    fg = "#75AD47"
  },
  MiniStarterSection = {
    bold = true,
    fg = "#50A4E9"
  },
  ModeMsg = {
    bold = true,
    fg = "#9B9FA9"
  },
  MoreMsg = {
    bold = true,
    fg = "#9B9FA9"
  },
  NeoTreeCursorLine = "PmenuSel",
  NeoTreeDirectoryIcon = {
    fg = "#50A4E9"
  },
  NeoTreeFileIcon = {
    fg = "#9B9FA9"
  },
  NeoTreeFileName = {
    fg = "#9B9FA9"
  },
  NeoTreeFileNameOpened = {
    fg = "#75AD47"
  },
  NeoTreeFloatBorder = {
    fg = "#14161B"
  },
  NeoTreeFloatTitle = {
    bg = "#16181D",
    bold = true,
    fg = "#50A4E9"
  },
  NeoTreeGitAdded = {
    fg = "#75AD47"
  },
  NeoTreeGitConflict = {
    fg = "#F8747E"
  },
  NeoTreeGitDeleted = {
    fg = "#494D56"
  },
  NeoTreeGitIgnored = {
    fg = "#9B9FA9"
  },
  NeoTreeGitModified = {
    fg = "#EB8332"
  },
  NeoTreeGitRenamed = {
    fg = "#EB8332"
  },
  NeoTreeGitStaged = {
    fg = "#00B298"
  },
  NeoTreeGitUnstaged = {
    fg = "#D09214"
  },
  NeoTreeGitUntracked = {
    fg = "#D09214"
  },
  NeoTreeIndentMarker = {
    fg = "#3A3E47"
  },
  NeoTreeNormal = {
    bg = "#16181D",
    fg = "#9B9FA9"
  },
  NeoTreeNormalNC = {
    bg = "#16181D",
    fg = "#9B9FA9"
  },
  NeoTreeRootName = {
    bold = true,
    fg = "#ADB0BB"
  },
  NeoTreeSymbolicLinkTarget = {
    fg = "#00B298"
  },
  NeoTreeTabActive = {
    bg = "#16181D",
    bold = true,
    fg = "#ADB0BB"
  },
  NeoTreeTabInactive = {
    bg = "#111317",
    fg = "#494D56"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#16181D",
    fg = "#16181D"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#111317",
    fg = "#111317"
  },
  NeoTreeTitleBar = {
    bg = "#16181D",
    bold = true,
    fg = "#50A4E9"
  },
  NeoTreeVertSplit = {
    bg = "#1A1D23",
    fg = "#111317"
  },
  NeoTreeWinSeparator = {
    bg = "#1A1D23",
    bold = true,
    fg = "#111317"
  },
  NeogitDiffAdd = {
    bg = "#1A1D23",
    fg = "#87C05F"
  },
  NeogitDiffAddHighlight = {
    bg = "#1A1D23",
    fg = "#87C05F"
  },
  NeogitDiffContext = {
    bg = "#16181D",
    fg = "#494D56"
  },
  NeogitDiffContextHighlight = {
    bg = "#16181D"
  },
  NeogitDiffDelete = {
    bg = "#1A1D23",
    fg = "#FF838B"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#1A1D23",
    fg = "#FF838B"
  },
  NeogitHunkHeader = {
    bg = "#494D56",
    fg = "#ADB0BB"
  },
  NoiceCursor = "Cursor",
  NonText = {
    bg = "NONE",
    fg = "#3A3E47"
  },
  Normal = {
    bg = "#1A1D23",
    fg = "#ADB0BB"
  },
  NormalFloat = {
    bg = "#14161B",
    fg = "#9B9FA9"
  },
  NormalNC = {
    bg = "#16181D",
    fg = "#ADB0BB"
  },
  NotifyBackground = {
    bg = "#1A1D23",
    fg = "#9B9FA9"
  },
  NotifyDEBUGBody = {
    bg = "#16181D",
    fg = "#9B9FA9"
  },
  NotifyDEBUGBorder = {
    bg = "#16181D",
    fg = "#00B298"
  },
  NotifyDEBUGIcon = {
    bg = "#16181D",
    fg = "#00B298"
  },
  NotifyDEBUGTitle = {
    bg = "#16181D",
    fg = "#00B298"
  },
  NotifyERRORBody = {
    bg = "#16181D",
    fg = "#9B9FA9"
  },
  NotifyERRORBorder = {
    bg = "#16181D",
    fg = "#F8747E"
  },
  NotifyERRORIcon = {
    bg = "#16181D",
    fg = "#F8747E"
  },
  NotifyERRORTitle = {
    bg = "#16181D",
    fg = "#F8747E"
  },
  NotifyINFOBody = {
    bg = "#16181D",
    fg = "#9B9FA9"
  },
  NotifyINFOBorder = {
    bg = "#16181D",
    fg = "#75AD47"
  },
  NotifyINFOIcon = {
    bg = "#16181D",
    fg = "#75AD47"
  },
  NotifyINFOTitle = {
    bg = "#16181D",
    fg = "#75AD47"
  },
  NotifyLogTime = {
    bg = "#16181D",
    fg = "#494D56"
  },
  NotifyLogTitle = {
    bg = "#16181D",
    fg = "#50A4E9"
  },
  NotifyTRACEBody = {
    bg = "#16181D",
    fg = "#9B9FA9"
  },
  NotifyTRACEIcon = {
    bg = "#16181D",
    fg = "#CC83E3"
  },
  NotifyTRACERBorder = {
    bg = "#16181D",
    fg = "#CC83E3"
  },
  NotifyTRACETitle = {
    bg = "#16181D",
    fg = "#CC83E3"
  },
  NotifyWARNBody = {
    bg = "#16181D",
    fg = "#9B9FA9"
  },
  NotifyWARNBorder = {
    bg = "#16181D",
    fg = "#EB8332"
  },
  NotifyWARNIcon = {
    bg = "#16181D",
    fg = "#EB8332"
  },
  NotifyWARNTitle = {
    bg = "#16181D",
    fg = "#EB8332"
  },
  Number = {
    bg = "NONE",
    fg = "#F5983A"
  },
  NvChAsciiHeader = {
    bg = "#1A1D23",
    fg = "#50A4E9"
  },
  NvChSection = {
    bg = "#23272F"
  },
  NvCheatsheetBlue = {
    bg = "#50A4E9",
    fg = "#1A1D23"
  },
  NvCheatsheetCyan = {
    bg = "#00B298",
    fg = "#1A1D23"
  },
  NvCheatsheetGray = {
    bg = "#9B9FA9",
    fg = "#1A1D23"
  },
  NvCheatsheetGreen = {
    bg = "#75AD47",
    fg = "#1A1D23"
  },
  NvCheatsheetMagenta = {
    bg = "#DD97F1",
    fg = "#1A1D23"
  },
  NvCheatsheetOrange = {
    bg = "#EB8332",
    fg = "#1A1D23"
  },
  NvCheatsheetPurple = {
    bg = "#CC83E3",
    fg = "#1A1D23"
  },
  NvCheatsheetRed = {
    bg = "#F8747E",
    fg = "#1A1D23"
  },
  NvCheatsheetWhite = {
    bg = "#E0E0Ee",
    fg = "#1A1D23"
  },
  NvCheatsheetYellow = {
    bg = "#D09214",
    fg = "#1A1D23"
  },
  NvimTreeEndOfBuffer = {
    fg = "#1A1D23"
  },
  NvimTreeExecFile = {
    fg = "#87C05F"
  },
  NvimTreeFolderIcon = {
    fg = "#5EB7FF"
  },
  NvimTreeGitDeleted = {
    fg = "#FF838B"
  },
  NvimTreeGitDirty = {
    fg = "#FF838B"
  },
  NvimTreeGitMerge = {
    fg = "#F5983A"
  },
  NvimTreeGitNew = {
    fg = "#DFAB25"
  },
  NvimTreeGitRenamed = {
    fg = "#DD97F1"
  },
  NvimTreeGitStaged = {
    fg = "#87C05F"
  },
  NvimTreeImageFile = {
    fg = "#DD97F1"
  },
  NvimTreeNormal = {
    bg = "#111317"
  },
  NvimTreeNormalNC = {
    bg = "#111317"
  },
  NvimTreeOpenedFile = {
    fg = "#87C05F"
  },
  NvimTreeRootFolder = {
    fg = "#1A1D23"
  },
  NvimTreeSpecialFile = {
    fg = "#DFAB25"
  },
  NvimTreeSymlink = {
    fg = "#4AC2B8"
  },
  NvimTreeVertSplit = {
    bg = "#111317",
    fg = "#111317"
  },
  Operator = {
    bg = "NONE",
    fg = "#ADB0BB"
  },
  Pmenu = {
    bg = "#14161B",
    fg = "#9B9FA9"
  },
  PmenuSbar = {
    bg = "#14161B",
    fg = "NONE"
  },
  PmenuSel = {
    bg = "#9B9FA9",
    blend = 0,
    bold = true,
    fg = "#26343F",
    reverse = true
  },
  PmenuThumb = {
    bg = "#50A4E9",
    blend = 0,
    fg = "NONE"
  },
  PreCondit = {
    bg = "NONE",
    fg = "#5EB7FF"
  },
  PreProc = {
    bg = "NONE",
    fg = "#DFAB25"
  },
  Question = {
    bg = "NONE",
    fg = "#CC83E3"
  },
  QuickFixLine = {
    bg = "#D09214",
    fg = "#1A1D23"
  },
  RainbowDelimiterBlue = {
    fg = "#5EB7FF"
  },
  RainbowDelimiterCyan = {
    fg = "#4AC2B8"
  },
  RainbowDelimiterGreen = {
    fg = "#87C05F"
  },
  RainbowDelimiterOrange = {
    fg = "#F5983A"
  },
  RainbowDelimiterRed = {
    fg = "#FF838B"
  },
  RainbowDelimiterViolet = {
    fg = "#DD97F1"
  },
  RainbowDelimiterYellow = {
    fg = "#DFAB25"
  },
  Repeat = {
    bg = "NONE",
    fg = "#DD97F1"
  },
  Search = {
    bg = "#26343F",
    fg = "NONE"
  },
  SignColumn = {
    bg = "NONE",
    fg = "NONE"
  },
  Special = {
    bg = "NONE",
    fg = "#5EB7FF"
  },
  SpecialChar = {
    bg = "NONE",
    fg = "#5EB7FF"
  },
  SpecialComment = {
    bg = "NONE",
    fg = "#3A3E47"
  },
  SpecialKey = {
    bg = "NONE",
    fg = "#9B9FA9"
  },
  SpellBad = {
    sp = "#F8747E",
    undercurl = true
  },
  SpellCap = {
    sp = "#D09214",
    undercurl = true
  },
  SpellLocal = {
    sp = "#50A4E9",
    undercurl = true
  },
  SpellRare = {
    sp = "#75AD47",
    undercurl = true
  },
  SpotlightBorder = {
    bg = "#1A1D23",
    fg = "#3A3E47"
  },
  SpotlightNormal = {
    bg = "#1A1D23",
    fg = "#9B9FA9"
  },
  SpotlightNormalNC = {
    bg = "#16181D",
    fg = "#ADB0BB"
  },
  SpotlightTitle = {
    bg = "#1A1D23",
    bold = true,
    fg = "#50A4E9"
  },
  SpotlightWinSeparator = {
    bg = "#16181D",
    fg = "#16181D"
  },
  Statement = {
    bg = "NONE",
    fg = "#DD97F1"
  },
  StatusCommand = {
    bg = "#D09214",
    fg = "#111317"
  },
  StatusInactive = {
    bg = "#494D56",
    fg = "#111317"
  },
  StatusInsert = {
    bg = "#75AD47",
    fg = "#111317"
  },
  StatusLine = {
    bg = "#111317",
    fg = "#9B9FA9"
  },
  StatusLineNC = {
    bg = "NONE",
    fg = "#494D56"
  },
  StatusNormal = {
    bg = "#50A4E9",
    fg = "#111317"
  },
  StatusReplace = {
    bg = "#F8747E",
    fg = "#111317"
  },
  StatusTerminal = "StatusInsert",
  StatusVisual = {
    bg = "#CC83E3",
    fg = "#111317"
  },
  StorageClass = {
    bg = "NONE",
    fg = "#5EB7FF"
  },
  String = {
    bg = "NONE",
    fg = "#87C05F"
  },
  Structure = {
    bg = "NONE",
    fg = "#DFAB25"
  },
  Substitute = {
    bg = "#F8747E",
    bold = true,
    fg = "#1A1D23"
  },
  TSRainbowBlue = {
    fg = "#5EB7FF"
  },
  TSRainbowCyan = {
    fg = "#4AC2B8"
  },
  TSRainbowGreen = {
    fg = "#87C05F"
  },
  TSRainbowOrange = {
    fg = "#F5983A"
  },
  TSRainbowRed = {
    fg = "#FF838B"
  },
  TSRainbowViolet = {
    fg = "#DD97F1"
  },
  TSRainbowYellow = {
    fg = "#DFAB25"
  },
  TabLine = {
    bg = "#111317",
    fg = "#494D56"
  },
  TabLineFill = {
    bg = "#111317",
    fg = "NONE"
  },
  TabLineSel = {
    bg = "#1A1D23",
    bold = true,
    fg = "#ADB0BB",
    italic = true
  },
  Tag = {
    bg = "NONE",
    fg = "#5EB7FF"
  },
  TelescopeMatching = {
    bold = true,
    fg = "#E0E0Ee"
  },
  TelescopeMultiIcon = {
    fg = "#50A4E9"
  },
  TelescopeMultiSelection = {
    fg = "#5EB7FF"
  },
  TelescopePreviewBorder = {
    bg = "#1A1D23",
    fg = "#3A3E47"
  },
  TelescopePreviewNormal = {
    bg = "#1A1D23",
    fg = "#9B9FA9"
  },
  TelescopePreviewTitle = {
    bg = "#1A1D23",
    bold = true,
    fg = "#50A4E9"
  },
  TelescopePromptBorder = {
    bg = "#1A1D23",
    fg = "#3A3E47"
  },
  TelescopePromptNormal = {
    bg = "#1A1D23",
    fg = "#9B9FA9"
  },
  TelescopePromptPrefix = {
    fg = "#50A4E9"
  },
  TelescopePromptTitle = {
    bg = "#21242A",
    bold = true,
    fg = "#50A4E9"
  },
  TelescopeResultsBorder = {
    bg = "#1A1D23",
    fg = "#3A3E47"
  },
  TelescopeResultsNormal = {
    bg = "#1A1D23",
    fg = "#9B9FA9"
  },
  TelescopeResultsTitle = {
    bg = "#1A1D23",
    bold = true,
    fg = "#50A4E9"
  },
  TelescopeSelection = "PmenuSel",
  TelescopeSelectionCaret = {
    fg = "#50A4E9"
  },
  Terminal = {
    bg = "#1A1D23",
    fg = "#9B9FA9"
  },
  Title = {
    bg = "#16181D",
    bold = true,
    fg = "#50A4E9"
  },
  Todo = {
    bg = "NONE",
    fg = "#D09214"
  },
  Type = {
    bg = "NONE",
    fg = "#5EB7FF"
  },
  Typedef = {
    bg = "NONE",
    fg = "#DFAB25"
  },
  Underlined = {
    bg = "NONE",
    fg = "#4AC2B8",
    underline = true
  },
  VertSplit = {
    bg = "#1A1D23",
    fg = "#111317"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#DFAB25"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#F5983A"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#87C05F"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#5EB7FF"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#4AC2B8"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#DFAB25"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#DD97F1"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#3A3E47"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#4AC2B8"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#F5983A"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#3A3E47"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#F5983A"
  },
  Visual = {
    bg = "#26343F",
    fg = "NONE"
  },
  VisualNOS = {
    bg = "NONE",
    fg = "#26343F"
  },
  WarningMsg = {
    bg = "NONE",
    fg = "#D09214"
  },
  WhichKey = {
    fg = "#00B298"
  },
  WhichKeyBorder = "FloatBorder",
  WhichKeyDesc = {
    fg = "#CC83E3"
  },
  WhichKeyFloat = "NormalFloat",
  WhichKeyGroup = {
    fg = "#50A4E9"
  },
  WhichKeySeparator = {
    fg = "#3A3E47"
  },
  WhichKeyValue = {
    fg = "#ADB0BB"
  },
  WildMenu = {
    bg = "#50A4E9",
    fg = "#1A1D23"
  },
  WinBar = {
    bg = "NONE",
    fg = "#797D87"
  },
  WinBarNC = {
    bg = "#16181D",
    fg = "#494D56"
  },
  WinSeparator = {
    bg = "#1A1D23",
    bold = false,
    fg = "#111317"
  },
  WindowPickerStatusLine = {
    fg = "#F8747E"
  },
  WindowPickerStatusLineNC = {
    fg = "#F8747E"
  },
  WindowPickerWinBar = {
    fg = "#F8747E"
  },
  WindowPickerWinBarNC = {
    fg = "#F8747E"
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
