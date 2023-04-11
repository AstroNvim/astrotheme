local function callback()
  return {

    -- misc
    ["@comment"] = { link = "Comment" },
    ["@define"] = { link = "Define" },
    ["@error"] = { link = "Error" },
    ["@operator"] = { link = "Operator" },
    ["@preproc"] = { link = "PreProc" },

    -- data types
    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@float"] = { link = "Float" },
    ["@string"] = { link = "String" },
    ["@string.escape"] = { fg = C.red },
    ["@string.regex"] = { link = "String" },
    ["@string.special"] = { link = "String" },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    ["@annotation"] = { fg = C.yellow },
    ["@attribute"] = { fg = C.red },

    -- function
    ["@constructor"] = { fg = C.yellow },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = C.cyan },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { fg = C.yellow },
    ["@method"] = { fg = C.cyan },
    ["@method.call"] = { link = "@method" },

    -- identifiers
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = C.orange },
    ["@constant.macro"] = { fg = C.red },

    ["@namespace"] = { link = "Keyword" },
    ["@symbol"] = { link = "Special" },

    ["@variable"] = { link = "Identifier" },
    ["@variable.builtin"] = { fg = C.red },

    ["@property"] = { link = "@variable.builtin" },

    -- keyword
    ["@conditional"] = { link = "Conditional" },
    ["@exception"] = { link = "Exception" },
    ["@include"] = { link = "Include" },

    ["@keyword"] = { link = "Keyword" },
    ["@keyword.export"] = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.operator"] = { link = "Keyword" },
    ["@keyword.return"] = { link = "Keyword" },

    ["@label"] = { link = "Label" },
    ["@parameter"] = { fg = C.orange },
    ["@parameter.reference"] = { fg = C.cyan },

    ["@repeat"] = { link = "Repeat" },

    -- punctuation
    ["@punctuation.bracket"] = { fg = C.text },
    ["@punctuation.delimiter"] = { fg = C.text },
    ["@punctuation.special"] = { fg = C.text },

    -- tag
    ["@tag"] = { fg = C.red },
    ["@tag.attribute"] = { fg = C.cyan },
    ["@tag.delimiter"] = { fg = C.text },

    -- semantic tokens
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

    -- text
    ["@text"] = { fg = C.text },
    ["@text.emphasis"] = { fg = C.purple, italic = true },
    ["@text.environment"] = { fg = C.orange },
    ["@text.environment.name"] = { fg = C.blue },
    ["@text.literal"] = { fg = C.text },
    ["@text.math"] = { fg = C.blue },
    ["@text.reference"] = { fg = C.yellow, bold = true },
    ["@text.strong"] = { fg = C.blue, bold = true },
    ["@text.strike"] = { fg = C.green, strikethrough = true },
    ["@text.title"] = { fg = C.text, bold = true },
    ["@text.underline"] = { link = "Underline" },
    ["@text.uri"] = { fg = C.green, italic = true, underline = true },

    ["@text.todo"] = { fg = C.base, bg = C.yellow },
    ["@text.todo.checked"] = { fg = C.green },
    ["@text.todo.danger"] = { fg = C.base, bg = C.red },
    ["@text.todo.note"] = { fg = C.base, bg = C.blue },
    ["@text.todo.unchecked"] = { fg = C.overlay1 },
    ["@text.todo.warning"] = { fg = C.base, bg = C.yellow },

    ["@text.diff.add"] = { link = "DiffAdded" },
    ["@text.diff.delete"] = { link = "DiffDelete" },

    -- type
    ["@field"] = { fg = C.red },
    ["@storageclass"] = { link = "StorageClass" },

    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "@type" },
    ["@type.definition"] = { link = "@type" },
    ["@type.qualifier"] = { link = "@type" },

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
    ["@property.toml"] = { fg = C.blue },

    -- typescript
    ["@type.qualifier.typescript"] = { link = "Keyword" },

    -- TSX (Typescript React)
    ["@constructor.tsx"] = { fg = C.lavender },
    ["@tag.attribute.tsx"] = { fg = C.purple, italic = true },

    -- yaml
    ["@field.yaml"] = { fg = C.blue },
  }
end

return callback
