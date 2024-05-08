---@type AstroThemeCallback
local function callback(opts)
  return {
    -- identifiers
    ["@variable"] = { link = "Identifier" },
    ["@variable.builtin"] = {
      fg = opts.simple_syntax_colors and C.syntax.text or C.syntax.cyan,
      bold = opts.simple_syntax_colors,
    },
    ["@variable.parameter"] = {
      fg = opts.simple_syntax_colors and C.syntax.text or C.syntax.orange,
    },
    ["@variable.parameter.builtin"] = { link = "@variable.parameter" },
    ["@variable.member"] = { link = "@property" },

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "@constant" },
    ["@constant.macro"] = { link = "@constant" },

    ["@module"] = { link = "Keyword" },
    ["@module.builtin"] = { fg = C.syntax.yellow },
    ["@label"] = { link = "Label" },

    -- literals
    ["@string"] = { link = "String" },
    ["@string.documentation"] = { link = "String" },
    ["@string.regexp"] = { link = "String" },
    ["@string.escape"] = { fg = C.syntax.red },
    ["@string.special"] = { link = "String" },
    ["@string.special.symbol"] = { link = "String" },
    ["@string.special.url"] = { link = "@markup.link.url" },
    ["@string.special.path"] = { link = "String" },

    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },

    -- types
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = C.syntax.yellow },
    ["@type.definition"] = { link = "@type" },

    ["@attribute"] = { fg = C.syntax.yellow },
    ["@attribute.builtin"] = { link = "@attribute" },
    ["@property"] = { fg = opts.simple_syntax_colors and C.syntax.text or C.syntax.red },

    -- function
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = opts.simple_syntax_colors and C.syntax.blue or C.syntax.cyan },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { fg = C.syntax.yellow },

    ["@function.method"] = { link = "@function" },
    ["@function.method.call"] = { link = "@function.method" },

    ["@constructor"] = { link = "@function" },
    ["@operator"] = { link = "Operator" },

    -- keyword
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.corotine"] = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.operator"] = { link = "Keyword" },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.type"] = { link = "Typedef" },
    ["@keyword.modifier"] = { link = "Structure" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.exception"] = { link = "Exception" },

    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.conditional.ternary"] = { link = "@keyword.conditional" },

    ["@keyword.directive"] = { link = "Keyword" },
    ["@keyword.directive.define"] = { link = "Keyword" },

    -- punctuation
    ["@punctuation.delimiter"] = { fg = C.syntax.text },
    ["@punctuation.bracket"] = { fg = C.syntax.text },
    ["@punctuation.special"] = { fg = C.syntax.text },

    -- comment
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { link = "@comment" },

    ["@comment.error"] = { fg = C.ui.base, bg = C.ui.red },
    ["@comment.warning"] = { fg = C.ui.base, bg = C.ui.orange },
    ["@comment.hint"] = { fg = C.ui.base, bg = C.ui.blue },
    ["@comment.info"] = { fg = C.ui.base, bg = C.ui.cyan },
    ["@comment.todo"] = { fg = C.ui.base, bg = C.ui.yellow },

    -- markup
    ["@markup.strong"] = { fg = C.syntax.text, bold = true },
    ["@markup.italic"] = { fg = C.syntax.text, italic = true },
    ["@markup.strikethrough"] = { fg = C.syntax.text, strikethrough = true },
    ["@markup.underline"] = { link = "Underline" },

    ["@markup.heading"] = { fg = C.syntax.text, bold = true },
    ["@markup.heading.1.markdown"] = { fg = C.syntax.purple, bold = true },
    ["@markup.heading.2.markdown"] = { fg = C.syntax.blue, bold = true },
    ["@markup.heading.3.markdown"] = { fg = C.syntax.cyan, bold = true },
    ["@markup.heading.4.markdown"] = { fg = C.syntax.green, bold = true },
    ["@markup.heading.5.markdown"] = { fg = C.syntax.yellow, bold = true },

    ["@markup.quote"] = { fg = C.syntax.text, italic = true },
    ["@markup.math"] = { fg = C.syntax.blue },
    ["@markup.environment"] = { fg = C.syntax.orange },

    ["@markup.link"] = { fg = C.syntax.yellow, bold = true },
    ["@markup.link.label"] = { link = "String" },
    ["@markup.link.url"] = { fg = C.syntax.green, italic = true, underline = true },

    ["@markup.raw"] = { fg = C.syntax.text },
    ["@markup.raw.block"] = { fg = C.syntax.text },

    ["@markup.list"] = { link = "Special" },
    ["@markup.list.unchecked"] = { fg = C.ui.base, bg = C.ui.purple },
    ["@markup.list.checked"] = { fg = C.ui.base, bg = C.ui.green },

    ["@diff.plus"] = { link = "DiffAdded" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.delta"] = { link = "DiffChange" },

    ["@tag"] = { fg = C.syntax.red },
    ["@tag.attribute"] = { fg = C.syntax.cyan },
    ["@tag.delimiter"] = { fg = C.syntax.text },

    -- None-highlighting captures
    -- ["@none"] = {},
    -- ["@conceal"] = {},

    -- ["@spell"] = {},
    -- ["@nospell"] = {},

    -----------------------
    -- Language Specific --
    -----------------------

    -- cpp
    ["@property.cpp"] = { fg = C.syntax.orange },

    -- css
    ["@number.css"] = { fg = C.syntax.cyan },
    ["@property.css"] = { fg = C.syntax.orange },
    ["@property.class.css"] = { fg = C.syntax.yellow },
    ["@property.id.css"] = { fg = C.syntax.blue },
    ["@string.plain.css"] = { fg = C.syntax.green },
    ["@type.tag.css"] = { fg = C.syntax.purple },
    ["@type.css"] = { fg = C.syntax.orange },

    -- json
    ["@label.json"] = { fg = C.syntax.blue },

    -- lua
    ["@constructor.lua"] = { fg = C.syntax.orange },
    ["@variable.lua"] = { link = "@variable" },

    -- PHP
    ["@type.qualifier.php"] = { link = "Keyword" },
    ["@function.method.php"] = { link = "Function" },
    ["@function.method.call.php"] = { link = "Function" },

    -- Ruby
    ["@string.special.symbol.ruby"] = { fg = C.syntax.orange },

    -- rust
    ["@constant.rust"] = { fg = C.syntax.cyan },
    ["@function.macro.rust"] = { fg = C.syntax.red },
    ["@module.rust"] = { fg = C.syntax.purple },
    ["@punctuation.special.rust"] = { fg = C.syntax.purple },
    ["@type.rust"] = { fg = C.syntax.cyan },

    -- toml
    ["@property.toml"] = { fg = C.syntax.red },

    -- typescript
    ["@type.qualifier.typescript"] = { link = "Keyword" },
    ["@constructor.typescript"] = { fg = C.syntax.purple },

    -- TSX (Typescript React)
    ["@constructor.tsx"] = { fg = C.syntax.purple },
    ["@tag.attribute.tsx"] = { fg = C.syntax.purple, italic = true },

    -- yaml
    ["@field.yaml"] = { fg = C.syntax.red },

    ------------
    -- LEGACY --
    ------------

    ["@error"] = { link = "Error" },
    ["@string.regex"] = { link = "@string.regexp" },
    ["@float"] = { link = "@number.float" },
    ["@parameter"] = { link = "@variable.parameter" },
    ["@field"] = { link = "@variable.member" },

    ["@symbol"] = { link = "@string.special.symbol" },
    ["@namespace"] = { link = "@module" },
    ["@namespace.builtin"] = { link = "@module.builtin" },

    ["@text"] = { fg = C.syntax.text },
    ["@text.strong"] = { link = "@markup.strong" },
    ["@text.emphasis"] = { link = "@markup.emphasis" },
    ["@text.strike"] = { link = "@markup.strikethrough" },
    ["@text.underline"] = { link = "@markup.underline" },

    ["@text.title"] = { link = "@markup.heading" },
    ["@text.title.1.markdown"] = { link = "@markup.heading.1.markdown" },
    ["@text.title.2.markdown"] = { link = "@markup.heading.2.markdown" },
    ["@text.title.3.markdown"] = { link = "@markup.heading.3.markdown" },
    ["@text.title.4.markdown"] = { link = "@markup.heading.4.markdown" },
    ["@text.title.5.markdown"] = { link = "@markup.heading.5.markdown" },

    ["@text.quote"] = { link = "@markup.quote" },
    ["@text.math"] = { link = "@markup.math" },
    ["@text.environment"] = { link = "@markup.environment" },
    ["@text.environment.name"] = { link = "@markup.environment" },

    ["@text.literal"] = { link = "@markup.raw" },
    ["@text.uri"] = { link = "@markup.link.url" },
    ["@text.reference"] = { link = "@markup.link" },

    ["@text.todo"] = { link = "@comment.todo" },
    ["@text.note"] = { link = "@comment.hint" },
    ["@text.todo.note"] = { link = "@text.note" },
    ["@text.warning"] = { link = "@comment.warning" },
    ["@text.todo.warning"] = { link = "@text.warning" },
    ["@text.danger"] = { link = "@comment.error" },
    ["@text.todo.danger"] = { link = "@text.danger" },
    ["@text.unchecked"] = { link = "@markup.list.unchecked" },
    ["@text.todo.unchecked"] = { link = "@text.unchecked" },
    ["@text.checked"] = { link = "@markup.list.checked" },
    ["@text.todo.checked"] = { link = "@text.checked" },

    ["@text.diff.add"] = { link = "@diff.plus" },
    ["@text.diff.delete"] = { link = "@diff.minus" },

    ["@method"] = { link = "@function" },
    ["@method.call"] = { link = "@function.method" },

    ["@keyword.export"] = { link = "@keyword" },
    ["@keyword.storage"] = { link = "StorageClass" },
    ["@storageclass"] = { link = "@keyword.storageclass" },
    ["@conditional"] = { link = "@keyword.conditional" },
    ["@conditional.ternary"] = { link = "@keyword.conditional.ternary" },

    ["@repeat"] = { link = "@keyword.repeat" },
    ["@debug"] = { link = "@keyword.debug" },
    ["@include"] = { link = "@keyword.include" },
    ["@exception"] = { link = "@keyword.exception" },

    ["@preproc"] = { link = "@keyword.directive" },
    ["@define"] = { link = "@keyword.directive.define" },

    ["@type.qualifier"] = { link = "@type" },

    -- semantic tokens
    ["@annotation"] = { fg = C.syntax.yellow },
    ["@class"] = { fg = C.syntax.blue },
    ["@decorator"] = { fg = C.syntax.orange },
    ["@enum"] = { fg = C.syntax.cyan },
    ["@enumMember"] = { fg = C.syntax.orange },
    ["@event"] = { fg = C.syntax.orange },
    ["@interface"] = { fg = C.syntax.orange },
    ["@modifier"] = { fg = C.syntax.orange },
    ["@regexp"] = { fg = C.syntax.cyan },
    ["@struct"] = { fg = C.syntax.blue },
    ["@typeParameter"] = { fg = C.syntax.yellow },

    -----------------------
    -- Language Specific --
    -----------------------
    -- markdown
    ["@literal.markdown"] = { fg = C.syntax.green },
    ["@none.markdown"] = { fg = C.syntax.text },
    ["@punctuation.delimiter.markdown"] = { link = "@punctuation.delimiter" },
    ["@punctuation.special.markdown"] = { link = "@punctuation.special" },
    ["@title.markdown"] = { link = "markup.heading" },

    -- PHP
    ["@method.php"] = { link = "@function.method.php" },
    ["@method.call.php"] = { link = "@function.method.call.php" },

    -- Ruby
    ["@symbol.ruby"] = { link = "@string.special.symbol.ruby" },

    -- rust
    ["@namespace.rust"] = { link = "@module.rust" },
  }
  -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
end

return callback
