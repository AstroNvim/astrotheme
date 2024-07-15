local colors = {
  _style = "astrolight",
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
    blue = "#00508A",
    comment = "#8B9297",
    cyan = "#00615B",
    green = "#345E00",
    mute = "#8B9297",
    orange = "#A34500",
    purple = "#9E007C",
    red = "#990000",
    text = "#4F4F4F",
    yellow = "#7300B8"
  },
  term = {
    background = "#F7F8F8",
    black = "#E1E2E4",
    blue = "#00508A",
    bright_black = "#B9BABC",
    bright_blue = "#2878B2",
    bright_cyan = "#288983",
    bright_green = "#5C8628",
    bright_purple = "#C628A4",
    bright_red = "#C12828",
    bright_white = "#595959",
    bright_yellow = "#9B28E0",
    cyan = "#00615B",
    foreground = "#737474",
    green = "#345E00",
    purple = "#9E007C",
    red = "#990000",
    white = "#737474",
    yellow = "#7300B8"
  },
  ui = {
    accent = "#671FF0",
    base = "#F7F8F8",
    blue = "#3F8CEA",
    border = "#671FF0",
    current_line = "#EAEBEB",
    cyan = "#21B386",
    float = "#E1E2E3",
    green = "#42AD17",
    highlight = "#DADBDD",
    inactive_base = "#EAEBEB",
    menu_selection = "#E7E9EB",
    none_text = "#B5B9BD",
    orange = "#F0740A",
    prompt = "#F0F0F1",
    purple = "#671FF0",
    red = "#E72F1F",
    scrollbar = "#671FF0",
    selection = "#E7E9EB",
    split = "#E8E9EA",
    statusline = "#E1E2E4",
    tabline = "#E1E2E4",
    text = "#737474",
    text_active = "#424446",
    text_inactive = "#AEB3B6",
    text_match = "#17191C",
    title = "#671FF0",
    tool = "#F0F0F1",
    winbar = "#999FA3",
    yellow = "#E69400"
  }
}

local highlights = {
  ["@annotation"] = {
    fg = "#7300B8"
  },
  ["@attribute"] = {
    fg = "#7300B8"
  },
  ["@attribute.builtin"] = "@attribute",
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.special"] = "SpecialChar",
  ["@class"] = {
    fg = "#00508A"
  },
  ["@comment"] = "Comment",
  ["@comment.documentation"] = "@comment",
  ["@comment.error"] = {
    bg = "#E72F1F",
    fg = "#F7F8F8"
  },
  ["@comment.hint"] = {
    bg = "#3F8CEA",
    fg = "#F7F8F8"
  },
  ["@comment.info"] = {
    bg = "#21B386",
    fg = "#F7F8F8"
  },
  ["@comment.todo"] = {
    bg = "#E69400",
    fg = "#F7F8F8"
  },
  ["@comment.warning"] = {
    bg = "#F0740A",
    fg = "#F7F8F8"
  },
  ["@conditional"] = "@keyword.conditional",
  ["@conditional.ternary"] = "@keyword.conditional.ternary",
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "@constant",
  ["@constant.macro"] = "@constant",
  ["@constant.rust"] = {
    fg = "#00615B"
  },
  ["@constructor"] = "@function",
  ["@constructor.lua"] = {
    fg = "#A34500"
  },
  ["@constructor.tsx"] = {
    fg = "#9E007C"
  },
  ["@constructor.typescript"] = {
    fg = "#9E007C"
  },
  ["@debug"] = "@keyword.debug",
  ["@decorator"] = {
    fg = "#A34500"
  },
  ["@define"] = "@keyword.directive.define",
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdded",
  ["@enum"] = {
    fg = "#00615B"
  },
  ["@enumMember"] = {
    fg = "#A34500"
  },
  ["@error"] = "Error",
  ["@event"] = {
    fg = "#A34500"
  },
  ["@exception"] = "@keyword.exception",
  ["@field"] = "@variable.member",
  ["@field.yaml"] = {
    fg = "#990000"
  },
  ["@float"] = "@number.float",
  ["@function"] = "Function",
  ["@function.builtin"] = {
    fg = "#00615B"
  },
  ["@function.call"] = "@function",
  ["@function.macro"] = {
    fg = "#7300B8"
  },
  ["@function.macro.rust"] = {
    fg = "#990000"
  },
  ["@function.method"] = "@function",
  ["@function.method.call"] = "@function.method",
  ["@function.method.call.php"] = "Function",
  ["@function.method.php"] = "Function",
  ["@include"] = "@keyword.include",
  ["@interface"] = {
    fg = "#A34500"
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
    fg = "#00508A"
  },
  ["@literal.markdown"] = {
    fg = "#345E00"
  },
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@punctuation.special",
  ["@lsp.type.function.rust"] = {
    fg = "#4F4F4F"
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
    fg = "#4F4F4F"
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
    fg = "#A34500"
  },
  ["@markup.heading"] = {
    bold = true,
    fg = "#4F4F4F"
  },
  ["@markup.heading.1.markdown"] = {
    bold = true,
    fg = "#9E007C"
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = "#00508A"
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = "#00615B"
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = "#345E00"
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = "#7300B8"
  },
  ["@markup.italic"] = {
    fg = "#4F4F4F",
    italic = true
  },
  ["@markup.link"] = {
    bold = true,
    fg = "#7300B8"
  },
  ["@markup.link.label"] = "String",
  ["@markup.link.url"] = {
    fg = "#00508A",
    italic = true,
    underline = true
  },
  ["@markup.list"] = "Special",
  ["@markup.list.checked"] = {
    bg = "#42AD17",
    fg = "#F7F8F8"
  },
  ["@markup.list.unchecked"] = {
    bg = "#671FF0",
    fg = "#F7F8F8"
  },
  ["@markup.math"] = {
    fg = "#00508A"
  },
  ["@markup.quote"] = {
    fg = "#4F4F4F",
    italic = true
  },
  ["@markup.raw"] = {
    fg = "#990000"
  },
  ["@markup.raw.block"] = {
    fg = "#4F4F4F"
  },
  ["@markup.strikethrough"] = {
    fg = "#4F4F4F",
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true,
    fg = "#4F4F4F"
  },
  ["@markup.underline"] = "Underline",
  ["@method"] = "@function",
  ["@method.call"] = "@function.method",
  ["@method.call.php"] = "@function.method.call.php",
  ["@method.php"] = "@function.method.php",
  ["@modifier"] = {
    fg = "#A34500"
  },
  ["@module"] = "Keyword",
  ["@module.builtin"] = {
    fg = "#7300B8"
  },
  ["@module.rust"] = {
    fg = "#9E007C"
  },
  ["@namespace"] = "@module",
  ["@namespace.builtin"] = "@module.builtin",
  ["@namespace.rust"] = "@module.rust",
  ["@none.markdown"] = {
    fg = "#4F4F4F"
  },
  ["@number"] = "Number",
  ["@number.css"] = {
    fg = "#00615B"
  },
  ["@number.float"] = "Float",
  ["@operator"] = "Operator",
  ["@parameter"] = "@variable.parameter",
  ["@preproc"] = "@keyword.directive",
  ["@property"] = {
    fg = "#990000"
  },
  ["@property.class.css"] = {
    fg = "#7300B8"
  },
  ["@property.cpp"] = {
    fg = "#A34500"
  },
  ["@property.css"] = {
    fg = "#A34500"
  },
  ["@property.id.css"] = {
    fg = "#00508A"
  },
  ["@property.toml"] = {
    fg = "#990000"
  },
  ["@punctuation.bracket"] = {
    fg = "#4F4F4F"
  },
  ["@punctuation.delimiter"] = {
    fg = "#4F4F4F"
  },
  ["@punctuation.delimiter.markdown"] = "@punctuation.delimiter",
  ["@punctuation.special"] = {
    fg = "#4F4F4F"
  },
  ["@punctuation.special.markdown"] = "@punctuation.special",
  ["@punctuation.special.rust"] = {
    fg = "#9E007C"
  },
  ["@regexp"] = {
    fg = "#00615B"
  },
  ["@repeat"] = "@keyword.repeat",
  ["@storageclass"] = "@keyword.storageclass",
  ["@string"] = "String",
  ["@string.documentation"] = "String",
  ["@string.escape"] = {
    fg = "#990000"
  },
  ["@string.plain.css"] = {
    fg = "#345E00"
  },
  ["@string.regex"] = "@string.regexp",
  ["@string.regexp"] = "String",
  ["@string.special"] = "String",
  ["@string.special.path"] = "String",
  ["@string.special.symbol"] = "String",
  ["@string.special.symbol.ruby"] = {
    fg = "#A34500"
  },
  ["@string.special.url"] = "@markup.link.url",
  ["@struct"] = {
    fg = "#00508A"
  },
  ["@symbol"] = "@string.special.symbol",
  ["@symbol.ruby"] = "@string.special.symbol.ruby",
  ["@tag"] = {
    fg = "#990000"
  },
  ["@tag.attribute"] = {
    fg = "#00615B"
  },
  ["@tag.attribute.tsx"] = {
    fg = "#9E007C",
    italic = true
  },
  ["@tag.delimiter"] = {
    fg = "#4F4F4F"
  },
  ["@text"] = {
    fg = "#4F4F4F"
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
    fg = "#7300B8"
  },
  ["@type.css"] = {
    fg = "#A34500"
  },
  ["@type.definition"] = "@type",
  ["@type.qualifier"] = "@type",
  ["@type.qualifier.php"] = "Keyword",
  ["@type.qualifier.typescript"] = "Keyword",
  ["@type.rust"] = {
    fg = "#00615B"
  },
  ["@type.tag.css"] = {
    fg = "#9E007C"
  },
  ["@typeParameter"] = {
    fg = "#7300B8"
  },
  ["@variable"] = "Identifier",
  ["@variable.builtin"] = {
    bold = false,
    fg = "#00615B"
  },
  ["@variable.lua"] = "@variable",
  ["@variable.member"] = "@property",
  ["@variable.parameter"] = {
    fg = "#A34500"
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
    fg = "#B5B9BD"
  },
  AerialInterfaceIcon = "@type",
  AerialKeyIcon = "@type",
  AerialLine = {
    bg = "NONE",
    fg = "#671FF0"
  },
  AerialMethodIcon = "@method",
  AerialModuleIcon = "@namespace",
  AerialNamespaceIcon = "@namespace",
  AerialNormal = {
    fg = "#737474"
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
  Beacon = {
    bg = "#00508A"
  },
  Bold = {
    bold = true
  },
  Boolean = {
    bg = "NONE",
    fg = "#A34500"
  },
  BufferLineBufferSelected = {
    bg = "#F7F8F8",
    bold = true,
    fg = "#424446"
  },
  BufferLineBufferVisible = {
    bg = "#F7F8F8",
    fg = "#AEB3B6"
  },
  BufferLineCloseButtonSelected = {
    bg = "#E1E2E4",
    fg = "#E72F1F"
  },
  BufferLineCloseButtonVisible = {
    bg = "#E1E2E4",
    fg = "#E72F1F"
  },
  BufferLineError = {
    bg = "#E72F1F",
    fg = "#E72F1F"
  },
  BufferLineErrorDiagnostic = {
    bg = "#E72F1F",
    fg = "#E72F1F"
  },
  BufferLineIndicatorSelected = {
    bg = "#F7F8F8",
    fg = "#F7F8F8"
  },
  BufferLineModified = {
    bg = "#E1E2E4",
    fg = "#42AD17"
  },
  BufferLineModifiedSelected = {
    bg = "#F7F8F8",
    fg = "#42AD17"
  },
  BufferLineModifiedVisible = {
    bg = "#F7F8F8",
    fg = "#737474"
  },
  BufferLineTab = {
    bg = "#E1E2E4",
    fg = "#AEB3B6"
  },
  BufferLineTabClose = {
    bg = "#E1E2E4",
    fg = "#E72F1F"
  },
  BufferLineTabSelected = {
    bg = "#E1E2E4",
    fg = "#737474"
  },
  Character = {
    bg = "NONE",
    fg = "#345E00"
  },
  CmpItemAbbr = {
    fg = "#737474"
  },
  CmpItemAbbrDeprecated = {
    fg = "#990000",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bold = true,
    fg = "#17191C"
  },
  CmpItemAbbrMatchFuzzy = {
    bold = true,
    fg = "#17191C"
  },
  CmpItemKimdStruct = "@type",
  CmpItemKind = {
    fg = "#7300B8"
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
    bg = "#EAEBEB",
    fg = "NONE"
  },
  Comment = {
    bg = "NONE",
    fg = "#8B9297",
    italic = true
  },
  Conceal = {
    bg = "NONE",
    fg = "#AEB3B6"
  },
  Conditional = {
    bg = "NONE",
    fg = "#9E007C"
  },
  Constant = {
    bg = "NONE",
    fg = "#7300B8"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#737474",
    fg = "#F7F8F8"
  },
  CursorColumn = {
    bg = "#EAEBEB",
    fg = "NONE"
  },
  CursorIM = "Cursor",
  CursorLine = {
    bg = "#EAEBEB",
    fg = "NONE"
  },
  CursorLineNr = {
    bg = "NONE",
    fg = "#424446"
  },
  DapUIBreakpointsCurrentLine = {
    bold = true,
    fg = "#E69400"
  },
  DapUIBreakpointsDisabledLine = "Comment",
  DapUIBreakpointsInfo = {
    fg = "#671FF0"
  },
  DapUIBreakpointsLine = "DapUILineNumber",
  DapUIBreakpointsPath = "Title",
  DapUIDecoration = {
    fg = "#B5B9BD"
  },
  DapUIFloatBorder = "FloatBorder",
  DapUIFrameName = "Normal",
  DapUILineNumber = "Number",
  DapUIModifiedValue = {
    bold = true,
    fg = "#E69400"
  },
  DapUIPlayPause = {
    fg = "#42AD17"
  },
  DapUIRestart = {
    fg = "#E69400"
  },
  DapUIScope = "Title",
  DapUISource = "Keyword",
  DapUIStepBack = {
    fg = "#3F8CEA"
  },
  DapUIStepInto = {
    fg = "#3F8CEA"
  },
  DapUIStepOut = {
    fg = "#3F8CEA"
  },
  DapUIStepOver = {
    fg = "#3F8CEA"
  },
  DapUIStop = {
    fg = "#E72F1F"
  },
  DapUIStoppedThread = "Title",
  DapUIThread = "String",
  DapUIType = "Type",
  DapUIValue = {
    fg = "#990000"
  },
  DapUIVariable = "Identifier",
  DapUIWatchesEmpty = {
    fg = "#E72F1F"
  },
  DapUIWatchesError = {
    fg = "#E72F1F"
  },
  DapUIWatchesValue = {
    fg = "#F0740A"
  },
  DashboardCenter = {
    fg = "#00508A"
  },
  DashboardFooter = {
    fg = "#00615B"
  },
  DashboardHeader = {
    fg = "#00615B"
  },
  DashboardShortcut = {
    fg = "#7300B8"
  },
  Debug = {
    bg = "NONE",
    fg = "#3F8CEA"
  },
  Define = {
    bg = "NONE",
    fg = "#9E007C"
  },
  Delimiter = {
    bg = "NONE",
    fg = "#00508A"
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
    fg = "#E72F1F"
  },
  DiagnosticHint = {
    fg = "#21B386"
  },
  DiagnosticInfo = {
    fg = "#3F8CEA"
  },
  DiagnosticOk = {
    fg = "#42AD17"
  },
  DiagnosticUnderlineError = {
    sp = "#E72F1F",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#21B386",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#3F8CEA",
    undercurl = true
  },
  DiagnosticUnderlineOk = {
    sp = "#42AD17",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#E69400",
    undercurl = true
  },
  DiagnosticWarn = {
    fg = "#E69400"
  },
  DiffAdd = {
    bg = "#345E00",
    fg = "#F7F8F8"
  },
  DiffAdded = {
    fg = "#345E00"
  },
  DiffChange = {
    bg = "#7300B8",
    fg = "#F7F8F8"
  },
  DiffChanged = {
    fg = "#00508A"
  },
  DiffDelete = {
    bg = "#990000",
    fg = "#F7F8F8"
  },
  DiffFile = {
    fg = "#00508A"
  },
  DiffIndexLine = {
    fg = "#00615B"
  },
  DiffLine = {
    fg = "#4F4F4F"
  },
  DiffNewFile = {
    fg = "#345E00"
  },
  DiffOldFile = {
    fg = "#A34500"
  },
  DiffRemoved = {
    fg = "#990000"
  },
  DiffText = {
    bg = "#7300B8",
    fg = "#F7F8F8"
  },
  Directory = {
    bg = "NONE",
    fg = "#3F8CEA"
  },
  EndOfBuffer = {
    bg = "NONE",
    fg = "#B5B9BD"
  },
  Error = {
    bg = "NONE",
    fg = "#E72F1F"
  },
  ErrorMsg = {
    bg = "NONE",
    fg = "#990000"
  },
  Exception = {
    bg = "NONE",
    fg = "#9E007C"
  },
  Float = {
    bg = "NONE",
    fg = "#7300B8"
  },
  FloatBorder = {
    bg = "#E1E2E3",
    fg = "#671FF0"
  },
  FloatTitle = {
    bg = "#E1E2E3",
    bold = true,
    fg = "#671FF0"
  },
  FocusedSymbol = {
    bg = "NONE",
    fg = "#E69400"
  },
  FoldColumn = {
    bg = "NONE",
    fg = "#B5B9BD"
  },
  Folded = {
    bg = "NONE",
    fg = "#B5B9BD"
  },
  Function = {
    bg = "NONE",
    fg = "#00508A"
  },
  FzfLuaBorder = {
    bg = "#F7F8F8",
    fg = "#671FF0"
  },
  FzfLuaTitle = {
    bg = "#F7F8F8",
    bold = true,
    fg = "#671FF0"
  },
  GitSignsAdd = {
    bg = "NONE",
    fg = "#42AD17"
  },
  GitSignsChange = {
    bg = "NONE",
    fg = "#F0740A"
  },
  GitSignsDelete = {
    bg = "NONE",
    fg = "#E72F1F"
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
    fg = "#E72F1F"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#21B386"
  },
  HopNextKey2 = {
    fg = "#3F8CEA"
  },
  HopUnmatched = {
    fg = "#8B9297"
  },
  IblIndent = {
    fg = "#B5B9BD"
  },
  IblScope = {
    fg = "#737474"
  },
  IblWhitespace = {
    fg = "#B5B9BD"
  },
  Identifier = {
    bg = "NONE",
    fg = "#4F4F4F"
  },
  Ignore = {
    bg = "NONE",
    fg = "NONE"
  },
  IlluminatedWordRead = "LspReferenceRead",
  IlluminatedWordText = "LspReferenceText",
  IlluminatedWordWrite = "LspReferenceWrite",
  IncSearch = {
    bg = "#671FF0",
    fg = "#F7F8F8"
  },
  Include = {
    bg = "NONE",
    fg = "#9E007C"
  },
  IndentBlanklineChar = {
    fg = "#B5B9BD"
  },
  IndentBlanklineContextChar = {
    fg = "#737474"
  },
  IndentBlanklineContextStart = {
    fg = "#424446",
    underline = true
  },
  IndentBlanklineSpaceCharBlankline = {
    fg = "#B5B9BD"
  },
  IndentBlanklineSpaceshar = {
    fg = "#B5B9BD"
  },
  Italic = {
    italic = true
  },
  Keyword = {
    bg = "NONE",
    fg = "#9E007C"
  },
  Label = {
    bg = "NONE",
    fg = "#00508A"
  },
  LazyButton = "CursorLine",
  LazyButtonActive = "Visual",
  LazyComment = "Comment",
  LazyCommit = {
    bold = true,
    fg = "#AEB3B6"
  },
  LazyCommitIssue = {
    fg = "#E69400"
  },
  LazyCommitScope = {
    italic = true
  },
  LazyCommitType = {
    bold = true,
    fg = "#671FF0"
  },
  LazyDimmed = "Conceal",
  LazyDir = {
    fg = "#F0740A"
  },
  LazyH1 = {
    bg = "#671FF0",
    bold = true,
    fg = "#F7F8F8"
  },
  LazyH2 = {
    bold = true,
    fg = "#671FF0"
  },
  LazyLocal = {
    fg = "#E69400"
  },
  LazyNoCond = "DiagnosticWarn",
  LazyNormal = "NormalFloat",
  LazyProgressDone = {
    fg = "#42AD17"
  },
  LazyProgressTodo = "LineNr",
  LazyProp = "Conceal",
  LazyReasonCmd = {
    fg = "#F0740A"
  },
  LazyReasonEvent = {
    fg = "#E69400"
  },
  LazyReasonFt = {
    fg = "#21B386"
  },
  LazyReasonImport = {
    fg = "#737474"
  },
  LazyReasonKeys = {
    fg = "#671FF0"
  },
  LazyReasonPlugin = {
    fg = "#3F8CEA"
  },
  LazyReasonRuntime = {
    fg = "#E69400"
  },
  LazyReasonSource = {
    fg = "#42AD17"
  },
  LazyReasonStart = {
    fg = "#E72F1F"
  },
  LazySpecial = {
    fg = "#3F8CEA"
  },
  LazyTaskError = {
    fg = "#E72F1F"
  },
  LazyTaskOutput = {
    fg = "#737474"
  },
  LazyUrl = {
    fg = "#3F8CEA",
    underline = true
  },
  LazyValue = {
    fg = "#42AD17"
  },
  LightspeedCursor = "Cursor",
  LightspeedGreyWash = "Comment",
  LightspeedLabel = {
    fg = "#E72F1F",
    underline = true
  },
  LightspeedLabelDistant = {
    fg = "#E72F1F",
    underline = true
  },
  LightspeedLabelDistantOverlapped = {
    fg = "#3F8CEA",
    underline = true
  },
  LightspeedLabelOverlapped = {
    fg = "#00508A",
    underline = true
  },
  LightspeedMaskedChar = {
    fg = "#42AD17"
  },
  LightspeedOneCharMatch = "LightspeedShortcut",
  LightspeedPendingOpArea = "IncSearch",
  LightspeedShortcut = {
    bg = "#E72F1F",
    bold = true,
    fg = "#F0F0F1",
    underline = true
  },
  LightspeedShortcutOverlapped = {
    bg = "#00508A",
    bold = true,
    fg = "#F0F0F1",
    underline = true
  },
  LightspeedUniqueChar = "LightspeedUnlabeledMatch",
  LightspeedUnlabeledMatch = {
    bold = true,
    fg = "#4F4F4F"
  },
  LineNr = {
    bg = "NONE",
    fg = "#B5B9BD"
  },
  LspCodeLens = {
    fg = "#B5B9BD"
  },
  LspCodeLensSeparator = {
    fg = "#B5B9BD"
  },
  LspReferenceRead = {
    bg = "#DADBDD",
    fg = "NONE"
  },
  LspReferenceText = "LspReferenceRead",
  LspReferenceWrite = "LspReferenceRead",
  Macro = {
    bg = "NONE",
    fg = "#A34500"
  },
  MasonError = "ErrorMsg",
  MasonHeader = "FloatTitle",
  MasonHeaderSecondary = {
    bg = "#3F8CEA",
    bold = true,
    fg = "#F7F8F8"
  },
  MasonHeading = {
    bold = true
  },
  MasonHighlight = {
    fg = "#3F8CEA"
  },
  MasonHighlightBlock = {
    bg = "#3F8CEA",
    fg = "#F7F8F8"
  },
  MasonHighlightBlockBold = {
    bg = "#671FF0",
    bold = true,
    fg = "#F7F8F8"
  },
  MasonHighlightBlockBoldSecondary = {
    bg = "#671FF0",
    bold = true,
    fg = "#F7F8F8"
  },
  MasonHighlightBlockSecondary = {
    bg = "#671FF0",
    fg = "#F7F8F8"
  },
  MasonHighlightSecondary = {
    fg = "#671FF0"
  },
  MasonLink = "MasonHighlight",
  MasonMuted = {
    fg = "#E72F1F"
  },
  MasonMutedBlock = "CursorLine",
  MasonMutedBlockBold = {
    bg = "#3F8CEA",
    bold = true,
    fg = "#F7F8F8"
  },
  MasonNormal = "NormalFloat",
  MasonWarning = "WarningMsg",
  MatchParen = {
    bg = "NONE",
    bold = true,
    fg = "#F0740A"
  },
  MiniIconsAzure = {
    fg = "#62AFFF"
  },
  MiniIconsBlue = {
    fg = "#3F8CEA"
  },
  MiniIconsCyan = {
    fg = "#21B386"
  },
  MiniIconsGreen = {
    fg = "#42AD17"
  },
  MiniIconsGrey = {
    fg = "#737474"
  },
  MiniIconsOrange = {
    fg = "#F0740A"
  },
  MiniIconsPurple = {
    fg = "#671FF0"
  },
  MiniIconsRed = {
    fg = "#E72F1F"
  },
  MiniIconsYellow = {
    fg = "#E69400"
  },
  MiniStarterCurrent = {
    bold = true,
    fg = "#424446",
    underline = true
  },
  MiniStarterFooter = {
    bg = "NONE",
    fg = "#671FF0"
  },
  MiniStarterHeader = {
    bg = "NONE",
    fg = "#671FF0"
  },
  MiniStarterInactive = {
    fg = "#AEB3B6"
  },
  MiniStarterItem = {
    fg = "#737474"
  },
  MiniStarterItemBullet = {
    fg = "#671FF0"
  },
  MiniStarterItemPrefix = {
    fg = "#E69400"
  },
  MiniStarterQuery = {
    bold = true,
    fg = "#42AD17"
  },
  MiniStarterSection = {
    bold = true,
    fg = "#671FF0"
  },
  ModeMsg = {
    bold = true,
    fg = "#737474"
  },
  MoreMsg = {
    bold = true,
    fg = "#737474"
  },
  NeoTreeCursorLine = "PmenuSel",
  NeoTreeDirectoryIcon = {
    fg = "#3F8CEA"
  },
  NeoTreeFileIcon = {
    fg = "#737474"
  },
  NeoTreeFileName = {
    fg = "#737474"
  },
  NeoTreeFileNameOpened = {
    fg = "#42AD17"
  },
  NeoTreeFloatBorder = {
    fg = "#E1E2E3"
  },
  NeoTreeFloatTitle = {
    bg = "#F0F0F1",
    bold = true,
    fg = "#671FF0"
  },
  NeoTreeGitAdded = {
    fg = "#42AD17"
  },
  NeoTreeGitConflict = {
    fg = "#E72F1F"
  },
  NeoTreeGitDeleted = {
    fg = "#AEB3B6"
  },
  NeoTreeGitIgnored = {
    fg = "#737474"
  },
  NeoTreeGitModified = {
    fg = "#F0740A"
  },
  NeoTreeGitRenamed = {
    fg = "#F0740A"
  },
  NeoTreeGitStaged = {
    fg = "#21B386"
  },
  NeoTreeGitUnstaged = {
    fg = "#E69400"
  },
  NeoTreeGitUntracked = {
    fg = "#E69400"
  },
  NeoTreeIndentMarker = {
    fg = "#B5B9BD"
  },
  NeoTreeNormal = {
    bg = "#F0F0F1",
    fg = "#737474"
  },
  NeoTreeNormalNC = {
    bg = "#F0F0F1",
    fg = "#737474"
  },
  NeoTreeRootName = {
    bold = true,
    fg = "#424446"
  },
  NeoTreeSymbolicLinkTarget = {
    fg = "#21B386"
  },
  NeoTreeTabActive = {
    bg = "#F0F0F1",
    bold = true,
    fg = "#424446"
  },
  NeoTreeTabInactive = {
    bg = "#E1E2E4",
    fg = "#AEB3B6"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#F0F0F1",
    fg = "#F0F0F1"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#E1E2E4",
    fg = "#E1E2E4"
  },
  NeoTreeTitleBar = {
    bg = "#F0F0F1",
    bold = true,
    fg = "#671FF0"
  },
  NeoTreeVertSplit = {
    bg = "#F7F8F8",
    fg = "#E8E9EA"
  },
  NeoTreeWinSeparator = {
    bg = "#F7F8F8",
    bold = true,
    fg = "#E8E9EA"
  },
  NeogitDiffAdd = {
    bg = "#F7F8F8",
    fg = "#345E00"
  },
  NeogitDiffAddHighlight = {
    bg = "#F7F8F8",
    fg = "#345E00"
  },
  NeogitDiffContext = {
    bg = "#EAEBEB",
    fg = "#AEB3B6"
  },
  NeogitDiffContextHighlight = {
    bg = "#EAEBEB"
  },
  NeogitDiffDelete = {
    bg = "#F7F8F8",
    fg = "#990000"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#F7F8F8",
    fg = "#990000"
  },
  NeogitHunkHeader = {
    bg = "#AEB3B6",
    fg = "#424446"
  },
  NoiceCursor = "Cursor",
  NonText = {
    bg = "NONE",
    fg = "#B5B9BD"
  },
  Normal = {
    bg = "#F7F8F8",
    fg = "#4F4F4F"
  },
  NormalFloat = {
    bg = "#E1E2E3",
    fg = "#737474"
  },
  NormalNC = {
    bg = "#EAEBEB",
    fg = "#4F4F4F"
  },
  NotifyBackground = {
    bg = "#F7F8F8",
    fg = "#737474"
  },
  NotifyDEBUGBody = {
    bg = "#F0F0F1",
    fg = "#737474"
  },
  NotifyDEBUGBorder = {
    bg = "#F0F0F1",
    fg = "#21B386"
  },
  NotifyDEBUGIcon = {
    bg = "#F0F0F1",
    fg = "#21B386"
  },
  NotifyDEBUGTitle = {
    bg = "#F0F0F1",
    fg = "#21B386"
  },
  NotifyERRORBody = {
    bg = "#F0F0F1",
    fg = "#737474"
  },
  NotifyERRORBorder = {
    bg = "#F0F0F1",
    fg = "#E72F1F"
  },
  NotifyERRORIcon = {
    bg = "#F0F0F1",
    fg = "#E72F1F"
  },
  NotifyERRORTitle = {
    bg = "#F0F0F1",
    fg = "#E72F1F"
  },
  NotifyINFOBody = {
    bg = "#F0F0F1",
    fg = "#737474"
  },
  NotifyINFOBorder = {
    bg = "#F0F0F1",
    fg = "#42AD17"
  },
  NotifyINFOIcon = {
    bg = "#F0F0F1",
    fg = "#42AD17"
  },
  NotifyINFOTitle = {
    bg = "#F0F0F1",
    fg = "#42AD17"
  },
  NotifyLogTime = {
    bg = "#F0F0F1",
    fg = "#AEB3B6"
  },
  NotifyLogTitle = {
    bg = "#F0F0F1",
    fg = "#3F8CEA"
  },
  NotifyTRACEBody = {
    bg = "#F0F0F1",
    fg = "#737474"
  },
  NotifyTRACEIcon = {
    bg = "#F0F0F1",
    fg = "#671FF0"
  },
  NotifyTRACERBorder = {
    bg = "#F0F0F1",
    fg = "#671FF0"
  },
  NotifyTRACETitle = {
    bg = "#F0F0F1",
    fg = "#671FF0"
  },
  NotifyWARNBody = {
    bg = "#F0F0F1",
    fg = "#737474"
  },
  NotifyWARNBorder = {
    bg = "#F0F0F1",
    fg = "#F0740A"
  },
  NotifyWARNIcon = {
    bg = "#F0F0F1",
    fg = "#F0740A"
  },
  NotifyWARNTitle = {
    bg = "#F0F0F1",
    fg = "#F0740A"
  },
  Number = {
    bg = "NONE",
    fg = "#A34500"
  },
  NvChAsciiHeader = {
    bg = "#F7F8F8",
    fg = "#671FF0"
  },
  NvChSection = {
    bg = "#DADBDD"
  },
  NvCheatsheetBlue = {
    bg = "#3F8CEA",
    fg = "#F7F8F8"
  },
  NvCheatsheetCyan = {
    bg = "#21B386",
    fg = "#F7F8F8"
  },
  NvCheatsheetGray = {
    bg = "#737474",
    fg = "#F7F8F8"
  },
  NvCheatsheetGreen = {
    bg = "#42AD17",
    fg = "#F7F8F8"
  },
  NvCheatsheetMagenta = {
    bg = "#9E007C",
    fg = "#F7F8F8"
  },
  NvCheatsheetOrange = {
    bg = "#F0740A",
    fg = "#F7F8F8"
  },
  NvCheatsheetPurple = {
    bg = "#671FF0",
    fg = "#F7F8F8"
  },
  NvCheatsheetRed = {
    bg = "#E72F1F",
    fg = "#F7F8F8"
  },
  NvCheatsheetWhite = {
    bg = "#17191C",
    fg = "#F7F8F8"
  },
  NvCheatsheetYellow = {
    bg = "#E69400",
    fg = "#F7F8F8"
  },
  NvimTreeEndOfBuffer = {
    fg = "#F7F8F8"
  },
  NvimTreeExecFile = {
    fg = "#345E00"
  },
  NvimTreeFolderIcon = {
    fg = "#00508A"
  },
  NvimTreeGitDeleted = {
    fg = "#990000"
  },
  NvimTreeGitDirty = {
    fg = "#990000"
  },
  NvimTreeGitMerge = {
    fg = "#A34500"
  },
  NvimTreeGitNew = {
    fg = "#7300B8"
  },
  NvimTreeGitRenamed = {
    fg = "#9E007C"
  },
  NvimTreeGitStaged = {
    fg = "#345E00"
  },
  NvimTreeImageFile = {
    fg = "#9E007C"
  },
  NvimTreeNormal = {
    bg = "#E1E2E4"
  },
  NvimTreeNormalNC = {
    bg = "#E1E2E4"
  },
  NvimTreeOpenedFile = {
    fg = "#345E00"
  },
  NvimTreeRootFolder = {
    fg = "#F7F8F8"
  },
  NvimTreeSpecialFile = {
    fg = "#7300B8"
  },
  NvimTreeSymlink = {
    fg = "#00615B"
  },
  NvimTreeVertSplit = {
    bg = "#E1E2E4",
    fg = "#E1E2E4"
  },
  Operator = {
    bg = "NONE",
    fg = "#4F4F4F"
  },
  Pmenu = {
    bg = "#E1E2E3",
    fg = "#737474"
  },
  PmenuSbar = {
    bg = "#E1E2E3",
    fg = "NONE"
  },
  PmenuSel = {
    bg = "#E7E9EB",
    blend = 0,
    bold = true
  },
  PmenuThumb = {
    bg = "#671FF0",
    blend = 0,
    fg = "NONE"
  },
  PreCondit = {
    bg = "NONE",
    fg = "#00508A"
  },
  PreProc = {
    bg = "NONE",
    fg = "#7300B8"
  },
  Question = {
    bg = "NONE",
    fg = "#671FF0"
  },
  QuickFixLine = {
    bg = "#E69400",
    fg = "#F7F8F8"
  },
  RainbowDelimiterBlue = {
    fg = "#00508A"
  },
  RainbowDelimiterCyan = {
    fg = "#00615B"
  },
  RainbowDelimiterGreen = {
    fg = "#345E00"
  },
  RainbowDelimiterOrange = {
    fg = "#A34500"
  },
  RainbowDelimiterRed = {
    fg = "#990000"
  },
  RainbowDelimiterViolet = {
    fg = "#9E007C"
  },
  RainbowDelimiterYellow = {
    fg = "#7300B8"
  },
  Repeat = {
    bg = "NONE",
    fg = "#9E007C"
  },
  Search = {
    bg = "#E7E9EB",
    fg = "NONE"
  },
  SignColumn = {
    bg = "NONE",
    fg = "NONE"
  },
  Special = {
    bg = "NONE",
    fg = "#00508A"
  },
  SpecialChar = {
    bg = "NONE",
    fg = "#00508A"
  },
  SpecialComment = {
    bg = "NONE",
    fg = "#B5B9BD"
  },
  SpecialKey = {
    bg = "NONE",
    fg = "#737474"
  },
  SpellBad = {
    sp = "#E72F1F",
    undercurl = true
  },
  SpellCap = {
    sp = "#E69400",
    undercurl = true
  },
  SpellLocal = {
    sp = "#3F8CEA",
    undercurl = true
  },
  SpellRare = {
    sp = "#42AD17",
    undercurl = true
  },
  SpotlightBorder = {
    bg = "#F7F8F8",
    fg = "#671FF0"
  },
  SpotlightNormal = {
    bg = "#F7F8F8",
    fg = "#737474"
  },
  SpotlightNormalNC = {
    bg = "#EAEBEB",
    fg = "#4F4F4F"
  },
  SpotlightTitle = {
    bg = "#F7F8F8",
    bold = true,
    fg = "#671FF0"
  },
  SpotlightWinSeparator = {
    bg = "#EAEBEB",
    fg = "#EAEBEB"
  },
  Statement = {
    bg = "NONE",
    fg = "#9E007C"
  },
  StatusCommand = {
    bg = "#E69400",
    fg = "#E1E2E4"
  },
  StatusInactive = {
    bg = "#AEB3B6",
    fg = "#E1E2E4"
  },
  StatusInsert = {
    bg = "#42AD17",
    fg = "#E1E2E4"
  },
  StatusLine = {
    bg = "#E1E2E4",
    fg = "#737474"
  },
  StatusLineNC = {
    bg = "NONE",
    fg = "#AEB3B6"
  },
  StatusNormal = {
    bg = "#3F8CEA",
    fg = "#E1E2E4"
  },
  StatusReplace = {
    bg = "#E72F1F",
    fg = "#E1E2E4"
  },
  StatusTerminal = "StatusInsert",
  StatusVisual = {
    bg = "#671FF0",
    fg = "#E1E2E4"
  },
  StorageClass = {
    bg = "NONE",
    fg = "#00508A"
  },
  String = {
    bg = "NONE",
    fg = "#345E00"
  },
  Structure = {
    bg = "NONE",
    fg = "#7300B8"
  },
  Substitute = {
    bg = "#E72F1F",
    bold = true,
    fg = "#F7F8F8"
  },
  TSRainbowBlue = {
    fg = "#00508A"
  },
  TSRainbowCyan = {
    fg = "#00615B"
  },
  TSRainbowGreen = {
    fg = "#345E00"
  },
  TSRainbowOrange = {
    fg = "#A34500"
  },
  TSRainbowRed = {
    fg = "#990000"
  },
  TSRainbowViolet = {
    fg = "#9E007C"
  },
  TSRainbowYellow = {
    fg = "#7300B8"
  },
  TabLine = {
    bg = "#E1E2E4",
    fg = "#AEB3B6"
  },
  TabLineFill = {
    bg = "#E1E2E4",
    fg = "NONE"
  },
  TabLineSel = {
    bg = "#F7F8F8",
    bold = true,
    fg = "#424446",
    italic = true
  },
  Tag = {
    bg = "NONE",
    fg = "#00508A"
  },
  TelescopeMatching = {
    bold = true,
    fg = "#17191C"
  },
  TelescopeMultiIcon = {
    fg = "#3F8CEA"
  },
  TelescopeMultiSelection = {
    fg = "#00508A"
  },
  TelescopePreviewBorder = {
    bg = "#F7F8F8",
    fg = "#671FF0"
  },
  TelescopePreviewNormal = {
    bg = "#F7F8F8",
    fg = "#737474"
  },
  TelescopePreviewTitle = {
    bg = "#F7F8F8",
    bold = true,
    fg = "#671FF0"
  },
  TelescopePromptBorder = {
    bg = "#F7F8F8",
    fg = "#671FF0"
  },
  TelescopePromptNormal = {
    bg = "#F7F8F8",
    fg = "#737474"
  },
  TelescopePromptPrefix = {
    fg = "#671FF0"
  },
  TelescopePromptTitle = {
    bg = "#F0F0F1",
    bold = true,
    fg = "#671FF0"
  },
  TelescopeResultsBorder = {
    bg = "#F7F8F8",
    fg = "#671FF0"
  },
  TelescopeResultsNormal = {
    bg = "#F7F8F8",
    fg = "#737474"
  },
  TelescopeResultsTitle = {
    bg = "#F7F8F8",
    bold = true,
    fg = "#671FF0"
  },
  TelescopeSelection = "PmenuSel",
  TelescopeSelectionCaret = {
    fg = "#671FF0"
  },
  Terminal = {
    bg = "#F7F8F8",
    fg = "#737474"
  },
  Title = {
    bg = "#F0F0F1",
    bold = true,
    fg = "#671FF0"
  },
  Todo = {
    bg = "NONE",
    fg = "#E69400"
  },
  Type = {
    bg = "NONE",
    fg = "#00508A"
  },
  Typedef = {
    bg = "NONE",
    fg = "#7300B8"
  },
  Underlined = {
    bg = "NONE",
    fg = "#00615B",
    underline = true
  },
  VertSplit = {
    bg = "#F7F8F8",
    fg = "#E8E9EA"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#7300B8"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#A34500"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#345E00"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#00508A"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#00615B"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#7300B8"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#9E007C"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#B5B9BD"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#00615B"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#A34500"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#B5B9BD"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#A34500"
  },
  Visual = {
    bg = "#E7E9EB",
    fg = "NONE"
  },
  VisualNOS = {
    bg = "NONE",
    fg = "#E7E9EB"
  },
  WarningMsg = {
    bg = "NONE",
    fg = "#E69400"
  },
  WhichKey = {
    fg = "#21B386"
  },
  WhichKeyBorder = "FloatBorder",
  WhichKeyDesc = {
    fg = "#671FF0"
  },
  WhichKeyFloat = "NormalFloat",
  WhichKeyGroup = {
    fg = "#3F8CEA"
  },
  WhichKeySeparator = {
    fg = "#B5B9BD"
  },
  WhichKeyValue = {
    fg = "#424446"
  },
  WildMenu = {
    bg = "#671FF0",
    fg = "#F7F8F8"
  },
  WinBar = {
    bg = "NONE",
    fg = "#999FA3"
  },
  WinBarNC = {
    bg = "#EAEBEB",
    fg = "#AEB3B6"
  },
  WinSeparator = {
    bg = "#F7F8F8",
    bold = false,
    fg = "#E8E9EA"
  },
  WindowPickerStatusLine = {
    fg = "#E72F1F"
  },
  WindowPickerStatusLineNC = {
    fg = "#E72F1F"
  },
  WindowPickerWinBar = {
    fg = "#E72F1F"
  },
  WindowPickerWinBarNC = {
    fg = "#E72F1F"
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
