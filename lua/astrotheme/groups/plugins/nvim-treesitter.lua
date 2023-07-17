local function callback(opts)
  return {

    -- misc
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { link = "@comment" },
    ["@error"] = { link = "Error" },
    ["@none"] = { link = "@Comment" },
    ["@preproc"] = { link = "PreProc" },
    ["@define"] = { link = "Define" },
    ["@operator"] = { link = "Operator" },

    -- punctuation
    ["@punctuation.bracket"] = { fg = C.syntax.text },
    ["@punctuation.delimiter"] = { fg = C.syntax.text },
    ["@punctuation.special"] = { link = "Special" },

    -- literals
    ["@string"] = { link = "String" },
    ["@string.escape"] = { fg = C.syntax.red },
    ["@string.regex"] = { link = "String" },
    ["@string.special"] = { link = "String" },

    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@float"] = { link = "Float" },

    -- function
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = opts.simple_syntax_colors and C.syntax.blue or C.syntax.cyan },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { fg = C.syntax.yellow },

    ["@method"] = { link = "@function" },
    ["@method.call"] = { link = "@method" },

    ["@constructor"] = { link = "@function" },
    ["@parameter"] = {
      fg = opts.simple_syntax_colors and C.syntax.text or C.syntax.orange,
      -- italic = opts.simple_syntax_colors,
    },

    -- keyword
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.corotine"] = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.operator"] = { link = "Keyword" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.export"] = { link = "Keyword" },

    ["@conditional"] = { link = "Conditional" },
    ["@conditional.ternary"] = { link = "@conditional" },

    ["@repeat"] = { link = "Repeat" },
    ["@debug"] = { link = "Debug" },
    ["@label"] = { link = "Label" },
    ["@include"] = { link = "Include" },
    ["@exception"] = { link = "Exception" },

    -- types
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "@type" },
    ["@type.definition"] = { link = "@type" },
    ["@type.qualifier"] = { link = "@type" },

    ["@storageclass"] = { link = "StorageClass" },
    ["@attribute"] = { fg = C.syntax.yellow },
    ["@field"] = {
      fg = opts.simple_syntax_colors and C.syntax.text or C.syntax.red,
    },
    ["@property"] = { fg = opts.simple_syntax_colors and C.syntax.text or C.syntax.red },

    -- identifiers
    ["@variable"] = { link = "Identifier" },
    ["@variable.builtin"] = {
      fg = opts.simple_syntax_colors and C.syntax.text or C.syntax.cyan,
      bold = opts.simple_syntax_colors,
    },

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "@constant" },
    ["@constant.macro"] = { link = "@constant" },

    ["@namespace"] = { link = "Keyword" },
    ["@namespace.builtin"] = { fg = C.syntax.yellow },
    ["@symbol"] = { link = "Special" },

    -- text
    ["@text"] = { fg = C.syntax.text },
    ["@text.strong"] = { fg = C.syntax.blue, bold = true },
    ["@text.emphasis"] = { fg = C.syntax.purple, italic = true },
    ["@text.underline"] = { link = "Underline" },
    ["@text.strike"] = { fg = C.syntax.green, strikethrough = true },
    ["@text.title"] = { fg = C.syntax.text, bold = true },
    ["@text.title.1.markdown"] = { fg = C.syntax.purple, bold = true },
    ["@text.title.2.markdown"] = { fg = C.syntax.blue, bold = true },
    ["@text.title.3.markdown"] = { fg = C.syntax.cyan, bold = true },
    ["@text.title.4.markdown"] = { fg = C.syntax.green, bold = true },
    ["@text.title.5.markdown"] = { fg = C.syntax.yellow, bold = true },
    ["@text.literal"] = { fg = C.syntax.text },
    ["@text.quote"] = { fg = C.syntax.text, italic = true },
    ["@text.uri"] = { fg = C.syntax.green, italic = true, underline = true },
    ["@text.math"] = { fg = C.syntax.blue },
    ["@text.environment"] = { fg = C.syntax.orange },
    ["@text.environment.name"] = { fg = C.syntax.blue },
    ["@text.reference"] = { fg = C.syntax.yellow, bold = true },

    ["@text.todo"] = { fg = C.ui.base, bg = C.ui.yellow },
    ["@text.note"] = { fg = C.ui.base, bg = C.ui.blue },
    ["@text.todo.note"] = { link = "@text.note" },
    ["@text.warning"] = { fg = C.ui.base, bg = C.ui.orange },
    ["@text.todo.warning"] = { link = "@text.warning" },
    ["@text.danger"] = { fg = C.ui.base, bg = C.ui.red },
    ["@text.todo.danger"] = { link = "@text.danger" },
    ["@text.unchecked"] = { fg = C.ui.base, bg = C.ui.purple },
    ["@text.todo.unchecked"] = { link = "@text.unchecked" },
    ["@text.checked"] = { fg = C.ui.base, bg = C.ui.green },
    ["@text.todo.checked"] = { link = "@text.checked" },

    ["@text.diff.add"] = { link = "DiffAdded" },
    ["@text.diff.delete"] = { link = "DiffDelete" },

    -- tag
    ["@tag"] = { fg = C.syntax.red },
    ["@tag.attribute"] = { fg = C.syntax.cyan },
    ["@tag.delimiter"] = { fg = C.syntax.text },

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

    -- markdown
    ["@literal.markdown"] = { fg = C.syntax.green },
    ["@none.markdown"] = { fg = C.syntax.text },
    ["@punctuation.delimiter.markdown"] = { fg = C.syntax.text },
    ["@punctuation.special.markdown"] = { fg = C.syntax.red },
    ["@title.markdown"] = { fg = C.syntax.red, bold = true },

    -- PHP
    ["@type.qualifier.php"] = { link = "Keyword" },
    ["@method.php"] = { link = "Function" },
    ["@method.call.php"] = { link = "Function" },

    -- Ruby
    ["@symbol.ruby"] = { fg = C.syntax.orange },

    -- rust
    ["@constant.rust"] = { fg = C.syntax.cyan },
    ["@function.macro.rust"] = { fg = C.syntax.red },
    ["@namespace.rust"] = { fg = C.syntax.purple },
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
  }
  -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
end

return callback
