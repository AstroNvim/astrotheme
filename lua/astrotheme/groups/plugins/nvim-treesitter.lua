local function callback()
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
    ["@punctuation.bracket"] = { fg = C.text },
    ["@punctuation.delimiter"] = { fg = C.text },
    ["@punctuation.special"] = { link = "Special" },

    -- literals
    ["@string"] = { link = "String" },
    ["@string.escape"] = { fg = C.red },
    ["@string.regex"] = { link = "String" },
    ["@string.special"] = { link = "String" },

    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@float"] = { link = "Float" },

    -- function
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = C.cyan },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { fg = C.yellow },

    ["@method"] = { link = "@function" },
    ["@method.call"] = { link = "@method" },

    ["@constructor"] = { link = "@function" },
    ["@parameter"] = { fg = C.orange },

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
    ["@attribute"] = { fg = C.yellow },
    ["@field"] = { link = "@property" },
    ["@property"] = { fg = C.red },

    -- identifiers
    ["@variable"] = { link = "Identifier" },
    ["@variable.builtin"] = { fg = C.cyan },

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "@constant" },
    ["@constant.macro"] = { link = "@constant" },

    ["@namespace"] = { link = "Keyword" },
    ["@symbol"] = { link = "Special" },

    -- text
    ["@text"] = { fg = C.text },
    ["@text.strong"] = { fg = C.blue, bold = true },
    ["@text.emphasis"] = { fg = C.purple, italic = true },
    ["@text.underline"] = { link = "Underline" },
    ["@text.strike"] = { fg = C.green, strikethrough = true },
    ["@text.title"] = { fg = C.text, bold = true },
    ["@text.literal"] = { fg = C.text },
    ["@text.quote"] = { fg = C.text, italic = true },
    ["@text.uri"] = { fg = C.green, italic = true, underline = true },
    ["@text.math"] = { fg = C.blue },
    ["@text.environment"] = { fg = C.orange },
    ["@text.environment.name"] = { fg = C.blue },
    ["@text.reference"] = { fg = C.yellow, bold = true },

    ["@text.todo"] = { fg = C.base, bg = C.yellow },
    ["@text.note"] = { fg = C.base, bg = C.blue },
    ["@text.title.1.markdown"] = { fg = C.syntax.text, bold = true },
    ["@text.title.2.markdown"] = { fg = C.syntax.purple, bold = true },
    ["@text.title.3.markdown"] = { fg = C.syntax.blue, bold = true },
    ["@text.title.4.markdown"] = { fg = C.syntax.cyan, bold = true },
    ["@text.title.5.markdown"] = { fg = C.syntax.green, bold = true },
    ["@text.todo.note"] = { link = "@text.note" },
    ["@text.warning"] = { fg = C.base, bg = C.yellow },
    ["@text.todo.warning"] = { link = "@text.warning" },
    ["@text.danger"] = { fg = C.base, bg = C.red },
    ["@text.todo.danger"] = { link = "@text.danger" },
    ["@text.unchecked"] = { fg = C.overlay1 },
    ["@text.todo.unchecked"] = { link = "@text.unchecked" },
    ["@text.checked"] = { fg = C.green },
    ["@text.todo.checked"] = { link = "@text.checked" },

    ["@text.diff.add"] = { link = "DiffAdded" },
    ["@text.diff.delete"] = { link = "DiffDelete" },

    -- tag
    ["@tag"] = { fg = C.red },
    ["@tag.attribute"] = { fg = C.cyan },
    ["@tag.delimiter"] = { fg = C.text },

    -- semantic tokens
    -- NOTE: these can not be found in the documentation are are specific
    ["@annotation"] = { fg = C.yellow },
    ["@class"] = { fg = C.blue },
    ["@decorator"] = { fg = C.orange },
    ["@enum"] = { fg = C.cyan },
    ["@enumMember"] = { fg = C.orange },
    ["@event"] = { fg = C.orange },
    ["@interface"] = { fg = C.orange },
    ["@modifier"] = { fg = C.orange },
    ["@regexp"] = { fg = C.cyan },
    ["@struct"] = { fg = C.blue },
    ["@typeParameter"] = { fg = C.yellow },

    -----------------------
    -- Language Specific --
    -----------------------

    -- cpp
    ["@property.cpp"] = { fg = C.orange },

    -- css
    ["@number.css"] = { fg = C.cyan },
    ["@property.css"] = { fg = C.orange },
    ["@property.class.css"] = { fg = C.yellow },
    ["@property.id.css"] = { fg = C.blue },
    ["@string.plain.css"] = { fg = C.green },
    ["@type.tag.css"] = { fg = C.purple },
    ["@type.css"] = { fg = C.orange },

    -- json
    ["@label.json"] = { fg = C.blue },

    -- lua
    ["@constructor.lua"] = { fg = C.orange },
    ["@variable.lua"] = { link = "@variable" },

    -- markdown
    ["@literal.markdown"] = { fg = C.green },
    ["@none.markdown"] = { fg = C.text },
    ["@punctuation.delimiter.markdown"] = { fg = C.text },
    ["@punctuation.special.markdown"] = { fg = C.red },
    ["@title.markdown"] = { fg = C.red, bold = true },

    -- PHP
    ["@type.qualifier.php"] = { link = "Keyword" },
    ["@method.php"] = { link = "Function" },
    ["@method.call.php"] = { link = "Function" },

    -- Ruby
    ["@symbol.ruby"] = { fg = C.orange },

    -- rust
    ["@constant.rust"] = { fg = C.cyan },
    ["@function.macro.rust"] = { fg = C.orange },
    ["@keyword.function.rust"] = { fg = C.orange },
    ["@namespace.rust"] = { fg = C.yellow },
    ["@type.rust"] = { fg = C.yellow },

    -- toml
    ["@property.toml"] = { fg = C.red },

    -- typescript
    ["@type.qualifier.typescript"] = { link = "Keyword" },

    -- TSX (Typescript React)
    ["@constructor.tsx"] = { fg = C.lavender },
    ["@tag.attribute.tsx"] = { fg = C.purple, italic = true },

    -- yaml
    ["@field.yaml"] = { fg = C.red },
  }
  -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
end

return callback
