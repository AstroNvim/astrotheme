---@type AstroThemeCallback
local function callback(colors, opts)
  return {
    -- identifiers
    ["@variable"] = { link = "Identifier" },
    ["@variable.builtin"] = {
      fg = opts.simple_syntax_colors and colors.syntax.text or colors.syntax.cyan,
      bold = opts.simple_syntax_colors,
    },
    ["@variable.parameter"] = {
      fg = opts.simple_syntax_colors and colors.syntax.text or colors.syntax.orange,
    },
    ["@variable.parameter.builtin"] = { link = "@variable.parameter" },
    ["@variable.member"] = { link = "@property" },

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "@constant" },
    ["@constant.macro"] = { link = "@constant" },

    ["@module"] = { link = "Keyword" },
    ["@module.builtin"] = { fg = colors.syntax.yellow },
    ["@label"] = { link = "Label" },

    -- literals
    ["@string"] = { link = "String" },
    ["@string.documentation"] = { link = "String" },
    ["@string.regexp"] = { link = "String" },
    ["@string.escape"] = { fg = colors.syntax.red },
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
    ["@type.builtin"] = { fg = colors.syntax.yellow },
    ["@type.definition"] = { link = "@type" },

    ["@attribute"] = { fg = colors.syntax.yellow },
    ["@attribute.builtin"] = { link = "@attribute" },
    ["@property"] = { fg = opts.simple_syntax_colors and colors.syntax.text or colors.syntax.red },

    -- function
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = opts.simple_syntax_colors and colors.syntax.blue or colors.syntax.cyan },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { fg = colors.syntax.yellow },

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
    ["@punctuation.delimiter"] = { fg = colors.syntax.text },
    ["@punctuation.bracket"] = { fg = colors.syntax.text },
    ["@punctuation.special"] = { fg = colors.syntax.text },

    -- comment
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { link = "@comment" },

    ["@comment.error"] = { fg = colors.ui.base, bg = colors.ui.red },
    ["@comment.warning"] = { fg = colors.ui.base, bg = colors.ui.orange },
    ["@comment.hint"] = { fg = colors.ui.base, bg = colors.ui.blue },
    ["@comment.info"] = { fg = colors.ui.base, bg = colors.ui.cyan },
    ["@comment.todo"] = { fg = colors.ui.base, bg = colors.ui.yellow },

    -- markup
    ["@markup.strong"] = { fg = colors.syntax.text, bold = true },
    ["@markup.italic"] = { fg = colors.syntax.text, italic = true },
    ["@markup.strikethrough"] = { fg = colors.syntax.text, strikethrough = true },
    ["@markup.underline"] = { link = "Underline" },

    ["@markup.heading"] = { fg = colors.syntax.text, bold = true },
    ["@markup.heading.1.markdown"] = { fg = colors.syntax.purple, bold = true },
    ["@markup.heading.2.markdown"] = { fg = colors.syntax.blue, bold = true },
    ["@markup.heading.3.markdown"] = { fg = colors.syntax.cyan, bold = true },
    ["@markup.heading.4.markdown"] = { fg = colors.syntax.green, bold = true },
    ["@markup.heading.5.markdown"] = { fg = colors.syntax.yellow, bold = true },

    ["@markup.quote"] = { fg = colors.syntax.text, italic = true },
    ["@markup.math"] = { fg = colors.syntax.blue },
    ["@markup.environment"] = { fg = colors.syntax.orange },

    ["@markup.link"] = { fg = colors.syntax.yellow, bold = true },
    ["@markup.link.label"] = { link = "String" },
    ["@markup.link.url"] = { fg = colors.syntax.blue, italic = true, underline = true },

    ["@markup.raw"] = { fg = colors.syntax.red },
    ["@markup.raw.block"] = { fg = colors.syntax.text },

    ["@markup.list"] = { link = "Special" },
    ["@markup.list.unchecked"] = { fg = colors.ui.base, bg = colors.ui.purple },
    ["@markup.list.checked"] = { fg = colors.ui.base, bg = colors.ui.green },

    ["@diff.plus"] = { link = "DiffAdded" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.delta"] = { link = "DiffChange" },

    ["@tag"] = { fg = colors.syntax.red },
    ["@tag.attribute"] = { fg = colors.syntax.cyan },
    ["@tag.delimiter"] = { fg = colors.syntax.text },

    -- None-highlighting captures
    -- ["@none"] = {},
    -- ["@conceal"] = {},

    -- ["@spell"] = {},
    -- ["@nospell"] = {},

    -----------------------
    -- Language Specific --
    -----------------------

    -- cpp
    ["@property.cpp"] = { fg = colors.syntax.orange },

    -- css
    ["@number.css"] = { fg = colors.syntax.cyan },
    ["@property.css"] = { fg = colors.syntax.orange },
    ["@property.class.css"] = { fg = colors.syntax.yellow },
    ["@property.id.css"] = { fg = colors.syntax.blue },
    ["@string.plain.css"] = { fg = colors.syntax.green },
    ["@type.tag.css"] = { fg = colors.syntax.purple },
    ["@type.css"] = { fg = colors.syntax.orange },

    -- json
    ["@label.json"] = { fg = colors.syntax.blue },

    -- lua
    ["@constructor.lua"] = { fg = colors.syntax.orange },
    ["@variable.lua"] = { link = "@variable" },

    -- PHP
    ["@type.qualifier.php"] = { link = "Keyword" },
    ["@function.method.php"] = { link = "Function" },
    ["@function.method.call.php"] = { link = "Function" },

    -- Ruby
    ["@string.special.symbol.ruby"] = { fg = colors.syntax.orange },

    -- rust
    ["@constant.rust"] = { fg = colors.syntax.cyan },
    ["@function.macro.rust"] = { fg = colors.syntax.red },
    ["@module.rust"] = { fg = colors.syntax.purple },
    ["@punctuation.special.rust"] = { fg = colors.syntax.purple },
    ["@type.rust"] = { fg = colors.syntax.cyan },

    -- toml
    ["@property.toml"] = { fg = colors.syntax.red },

    -- typescript
    ["@type.qualifier.typescript"] = { link = "Keyword" },
    ["@constructor.typescript"] = { fg = colors.syntax.purple },

    -- TSX (Typescript React)
    ["@constructor.tsx"] = { fg = colors.syntax.purple },
    ["@tag.attribute.tsx"] = { fg = colors.syntax.purple, italic = true },

    -- yaml
    ["@field.yaml"] = { fg = colors.syntax.red },

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

    ["@text"] = { fg = colors.syntax.text },
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
    ["@annotation"] = { fg = colors.syntax.yellow },
    ["@class"] = { fg = colors.syntax.blue },
    ["@decorator"] = { fg = colors.syntax.orange },
    ["@enum"] = { fg = colors.syntax.cyan },
    ["@enumMember"] = { fg = colors.syntax.orange },
    ["@event"] = { fg = colors.syntax.orange },
    ["@interface"] = { fg = colors.syntax.orange },
    ["@modifier"] = { fg = colors.syntax.orange },
    ["@regexp"] = { fg = colors.syntax.cyan },
    ["@struct"] = { fg = colors.syntax.blue },
    ["@typeParameter"] = { fg = colors.syntax.yellow },

    -----------------------
    -- Language Specific --
    -----------------------
    -- markdown
    ["@literal.markdown"] = { fg = colors.syntax.green },
    ["@none.markdown"] = { fg = colors.syntax.text },
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
