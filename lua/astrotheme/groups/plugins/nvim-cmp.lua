---@type AstroThemeCallback
local function callback()
  return {
    CmpItemAbbr = { fg = C.ui.text },
    CmpItemAbbrDeprecated = { fg = C.syntax.red, strikethrough = true },
    CmpItemAbbrMatch = { fg = C.ui.text_match, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = C.ui.text_match, bold = true },
    CmpItemKind = { fg = C.syntax.yellow },
    CmpItemKindClass = { link = "@type" },
    CmpItemKindColor = { link = "@constant" },
    CmpItemKindConstant = { link = "@constant" },
    CmpItemKindConstructor = { link = "@constructor" },
    CmpItemKindEnum = { link = "@type" },
    CmpItemKindEnumMember = { link = "@field" },
    CmpItemKindEvent = { link = "@type" },
    CmpItemKindField = { link = "@field" },
    CmpItemKindFile = { link = "@text.uri" },
    CmpItemKindFolder = { link = "@constant" },
    CmpItemKindFunction = { link = "@function" },
    CmpItemKindInterface = { link = "@type" },
    CmpItemKindKeyword = { link = "@keyword" },
    CmpItemKindMethod = { link = "@method" },
    CmpItemKindModule = { link = "@namespace" },
    CmpItemKindOperator = { link = "@operator" },
    CmpItemKindProperty = { link = "@property" },
    CmpItemKindReference = { link = "@type" },
    CmpItemKindSnippet = { link = "@constant" },
    CmpItemKimdStruct = { link = "@type" },
    CmpItemKindText = { link = "@text" },
    CmpItemKindTypeParameter = { link = "@type" },
    CmpItemKindUnit = { link = "@constant" },
    CmpItemKindValue = { link = "@constant" },
    CmpItemKindVariable = { link = "@variable" },
  }
end
return callback
