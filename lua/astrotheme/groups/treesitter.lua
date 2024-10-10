---@type AstroThemeCallback
local function callback(c, opts)
  return {
    -- identifiers
    ["@variable"] = "Identifier",
    ["@variable.builtin"] = {
      fg = opts.simple_syntax_colors and c.syntax.text or c.syntax.cyan,
      bold = opts.simple_syntax_colors,
    },
    ["@variable.parameter"] = {
      fg = opts.simple_syntax_colors and c.syntax.text or c.syntax.orange,
    },
    ["@variable.parameter.builtin"] = "@variable.parameter",
    ["@variable.member"] = "@property",

    ["@constant"] = "Constant",
    ["@constant.builtin"] = "@constant",
    ["@constant.macro"] = "@constant",

    ["@module"] = "Keyword",
    ["@module.builtin"] = { fg = c.syntax.yellow },
    ["@label"] = "Label",

    -- literals
    ["@string"] = "String",
    ["@string.documentation"] = "String",
    ["@string.regexp"] = "String",
    ["@string.escape"] = { fg = c.syntax.red },
    ["@string.special"] = "String",
    ["@string.special.symbol"] = "String",
    ["@string.special.url"] = "@markup.link.url",
    ["@string.special.path"] = "String",

    ["@character"] = "Character",
    ["@character.special"] = "SpecialChar",

    ["@boolean"] = "Boolean",
    ["@number"] = "Number",
    ["@number.float"] = "Float",

    -- types
    ["@type"] = "Type",
    ["@type.builtin"] = { fg = c.syntax.yellow },
    ["@type.definition"] = "@type",

    ["@attribute"] = { fg = c.syntax.yellow },
    ["@attribute.builtin"] = "@attribute",
    ["@property"] = { fg = opts.simple_syntax_colors and c.syntax.text or c.syntax.red },

    -- function
    ["@function"] = "Function",
    ["@function.builtin"] = { fg = opts.simple_syntax_colors and c.syntax.blue or c.syntax.cyan },
    ["@function.call"] = "@function",
    ["@function.macro"] = { fg = c.syntax.yellow },

    ["@function.method"] = "@function",
    ["@function.method.call"] = "@function.method",

    ["@constructor"] = "@function",
    ["@operator"] = "Operator",

    -- keyword
    ["@keyword"] = "Keyword",
    ["@keyword.corotine"] = "Keyword",
    ["@keyword.function"] = "Keyword",
    ["@keyword.operator"] = "Keyword",
    ["@keyword.import"] = "Include",
    ["@keyword.type"] = "Typedef",
    ["@keyword.modifier"] = "Structure",
    ["@keyword.repeat"] = "Repeat",
    ["@keyword.return"] = "Keyword",
    ["@keyword.debug"] = "Debug",
    ["@keyword.exception"] = "Exception",

    ["@keyword.conditional"] = "Conditional",
    ["@keyword.conditional.ternary"] = "@keyword.conditional",

    ["@keyword.directive"] = "Keyword",
    ["@keyword.directive.define"] = "Keyword",

    -- punctuation
    ["@punctuation.delimiter"] = { fg = c.syntax.text },
    ["@punctuation.bracket"] = { fg = c.syntax.text },
    ["@punctuation.special"] = { fg = c.syntax.text },
    ["@punctuation.bracket.php"] = { fg = c.syntax.purple, bold = true },

    -- comment
    ["@comment"] = "Comment",
    ["@comment.documentation"] = "@comment",

    ["@comment.error"] = "DiagnosticError",
    ["@comment.warning"] = "DiagnosticWarn",
    ["@comment.hint"] = "DiagnosticHint",
    ["@comment.info"] = "DiagnosticInfo",
    ["@comment.todo"] = { fg = c.ui.yellow },

    -- markup
    ["@markup.strong"] = { fg = c.syntax.text, bold = true },
    ["@markup.italic"] = { fg = c.syntax.text, italic = true },
    ["@markup.strikethrough"] = { fg = c.syntax.text, strikethrough = true },
    ["@markup.underline"] = "Underline",

    ["@markup.heading"] = { fg = c.syntax.text, bold = true },
    ["@markup.heading.1.markdown"] = { fg = c.syntax.purple, bold = true },
    ["@markup.heading.2.markdown"] = { fg = c.syntax.blue, bold = true },
    ["@markup.heading.3.markdown"] = { fg = c.syntax.cyan, bold = true },
    ["@markup.heading.4.markdown"] = { fg = c.syntax.green, bold = true },
    ["@markup.heading.5.markdown"] = { fg = c.syntax.yellow, bold = true },
    ["@markup.heading.6.markdown"] = { fg = c.syntax.yellow, bold = true },

    ["@markup.quote"] = { fg = c.syntax.text, italic = true },
    ["@markup.math"] = { fg = c.syntax.blue },
    ["@markup.environment"] = { fg = c.syntax.orange },

    ["@markup.link"] = { fg = c.syntax.yellow, bold = true },
    ["@markup.link.label"] = "String",
    ["@markup.link.url"] = { fg = c.syntax.blue, italic = true, underline = true },

    ["@markup.raw"] = { fg = c.syntax.red },
    ["@markup.raw.block"] = { fg = c.syntax.text },

    ["@markup.list"] = "Special",
    ["@markup.list.markdown"] = { fg = c.syntax.orange, bold = true },
    ["@markup.list.unchecked"] = { fg = c.ui.blue, bold = true },
    ["@markup.list.checked"] = { fg = c.ui.cyan, bold = true },

    ["@diff.plus"] = "DiffAdded",
    ["@diff.minus"] = "DiffDelete",
    ["@diff.delta"] = "DiffChange",

    ["@tag"] = { fg = c.syntax.red },
    ["@tag.attribute"] = { fg = c.syntax.cyan },
    ["@tag.delimiter"] = { fg = c.syntax.text },

    -- None-highlighting captures
    -- ["@none"] = {},
    -- ["@conceal"] = {},

    -- ["@spell"] = {},
    -- ["@nospell"] = {},

    -----------------------
    -- Language Specific --
    -----------------------

    -- cpp
    ["@property.cpp"] = { fg = c.syntax.orange },

    -- css
    ["@number.css"] = { fg = c.syntax.cyan },
    ["@property.css"] = { fg = c.syntax.orange },
    ["@property.class.css"] = { fg = c.syntax.yellow },
    ["@property.id.css"] = { fg = c.syntax.blue },
    ["@string.plain.css"] = { fg = c.syntax.green },
    ["@type.tag.css"] = { fg = c.syntax.purple },
    ["@type.css"] = { fg = c.syntax.orange },

    -- json
    ["@label.json"] = { fg = c.syntax.blue },

    -- lua
    ["@constructor.lua"] = { fg = c.syntax.orange },
    ["@variable.lua"] = "@variable",

    -- PHP
    ["@type.qualifier.php"] = "Keyword",
    ["@function.method.php"] = "Function",
    ["@function.method.call.php"] = "Function",

    -- Ruby
    ["@string.special.symbol.ruby"] = { fg = c.syntax.orange },

    -- rust
    ["@constant.rust"] = { fg = c.syntax.cyan },
    ["@function.macro.rust"] = { fg = c.syntax.red },
    ["@module.rust"] = { fg = c.syntax.purple },
    ["@punctuation.special.rust"] = { fg = c.syntax.purple },
    ["@type.rust"] = { fg = c.syntax.cyan },

    -- toml
    ["@property.toml"] = { fg = c.syntax.red },

    -- typescript
    ["@type.qualifier.typescript"] = "Keyword",
    ["@constructor.typescript"] = { fg = c.syntax.purple },

    -- TSX (Typescript React)
    ["@constructor.tsx"] = { fg = c.syntax.purple },
    ["@tag.attribute.tsx"] = { fg = c.syntax.purple, italic = true },

    -- yaml
    ["@field.yaml"] = { fg = c.syntax.red },

    ------------
    -- LEGACY --
    ------------

    ["@error"] = "Error",
    ["@string.regex"] = "@string.regexp",
    ["@float"] = "@number.float",
    ["@parameter"] = "@variable.parameter",
    ["@field"] = "@variable.member",

    ["@symbol"] = "@string.special.symbol",
    ["@namespace"] = "@module",
    ["@namespace.builtin"] = "@module.builtin",

    ["@text"] = { fg = c.syntax.text },
    ["@text.strong"] = "@markup.strong",
    ["@text.emphasis"] = "@markup.emphasis",
    ["@text.strike"] = "@markup.strikethrough",
    ["@text.underline"] = "@markup.underline",

    ["@text.title"] = "@markup.heading",
    ["@text.title.1.markdown"] = "@markup.heading.1.markdown",
    ["@text.title.2.markdown"] = "@markup.heading.2.markdown",
    ["@text.title.3.markdown"] = "@markup.heading.3.markdown",
    ["@text.title.4.markdown"] = "@markup.heading.4.markdown",
    ["@text.title.5.markdown"] = "@markup.heading.5.markdown",

    ["@text.quote"] = "@markup.quote",
    ["@text.math"] = "@markup.math",
    ["@text.environment"] = "@markup.environment",
    ["@text.environment.name"] = "@markup.environment",

    ["@text.literal"] = "@markup.raw",
    ["@text.uri"] = "@markup.link.url",
    ["@text.reference"] = "@markup.link",

    ["@text.todo"] = "@comment.todo",
    ["@text.note"] = "@comment.hint",
    ["@text.todo.note"] = "@text.note",
    ["@text.warning"] = "@comment.warning",
    ["@text.todo.warning"] = "@text.warning",
    ["@text.danger"] = "@comment.error",
    ["@text.todo.danger"] = "@text.danger",
    ["@text.unchecked"] = "@markup.list.unchecked",
    ["@text.todo.unchecked"] = "@text.unchecked",
    ["@text.checked"] = "@markup.list.checked",
    ["@text.todo.checked"] = "@text.checked",

    ["@text.diff.add"] = "@diff.plus",
    ["@text.diff.delete"] = "@diff.minus",

    ["@method"] = "@function",
    ["@method.call"] = "@function.method",

    ["@keyword.export"] = "@keyword",
    ["@keyword.storage"] = "StorageClass",
    ["@storageclass"] = "@keyword.storageclass",
    ["@conditional"] = "@keyword.conditional",
    ["@conditional.ternary"] = "@keyword.conditional.ternary",

    ["@repeat"] = "@keyword.repeat",
    ["@debug"] = "@keyword.debug",
    ["@include"] = "@keyword.include",
    ["@exception"] = "@keyword.exception",

    ["@preproc"] = "@keyword.directive",
    ["@define"] = "@keyword.directive.define",

    ["@type.qualifier"] = "@type",

    -- semantic tokens
    ["@annotation"] = { fg = c.syntax.yellow },
    ["@class"] = { fg = c.syntax.blue },
    ["@decorator"] = { fg = c.syntax.orange },
    ["@enum"] = { fg = c.syntax.cyan },
    ["@enumMember"] = { fg = c.syntax.orange },
    ["@event"] = { fg = c.syntax.orange },
    ["@interface"] = { fg = c.syntax.orange },
    ["@modifier"] = { fg = c.syntax.orange },
    ["@regexp"] = { fg = c.syntax.cyan },
    ["@struct"] = { fg = c.syntax.blue },
    ["@typeParameter"] = { fg = c.syntax.yellow },

    -----------------------
    -- Language Specific --
    -----------------------
    -- markdown
    ["@literal.markdown"] = { fg = c.syntax.green },
    ["@none.markdown"] = { fg = c.syntax.text },
    ["@punctuation.delimiter.markdown"] = "@punctuation.delimiter",
    ["@punctuation.special.markdown"] = "@punctuation.special",
    ["@title.markdown"] = "markup.heading",

    -- PHP
    ["@method.php"] = "@function.method.php",
    ["@method.call.php"] = "@function.method.call.php",

    -- Ruby
    ["@symbol.ruby"] = "@string.special.symbol.ruby",

    -- rust
    ["@namespace.rust"] = "@module.rust",
  }
  -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
end

return callback
