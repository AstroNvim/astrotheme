---@type AstroThemeCallback
local function callback(colors)
  local error = colors.ui.red
  local hint = colors.ui.cyan
  local info = colors.ui.blue
  local warn = colors.ui.yellow
  local okay = colors.ui.green
  return {
    DiagnosticError = { fg = error },
    DiagnosticHint = { fg = hint },
    DiagnosticInfo = { fg = info },
    DiagnosticWarn = { fg = warn },
    DiagnosticOk = { fg = okay },
    DiagnosticUnderlineError = { sp = error, undercurl = true },
    DiagnosticUnderlineHint = { sp = hint, undercurl = true },
    DiagnosticUnderlineInfo = { sp = info, undercurl = true },
    DiagnosticUnderlineWarn = { sp = warn, undercurl = true },
    DiagnosticUnderlineOk = { sp = okay, undercurl = true },
    LspCodeLens = { fg = colors.ui.none_text },
    LspCodeLensSeparator = { fg = colors.ui.none_text },
    LspReferenceRead = { fg = colors.none, bg = colors.ui.highlight },
    LspReferenceText = { link = "LspReferenceRead" },
    LspReferenceWrite = { link = "LspReferenceRead" },
    -- LSP Semantic Tokens
    -- Ref: :help lsp-semantics
    ["@lsp.type.boolean"] = { link = "@boolean" },
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
    ["@lsp.type.interface"] = { link = "@interface" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.unresolvedReference"] = { link = "@error" },
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.function.global"] = { link = "@function.builtin" },
    ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
    ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.reference"] = { link = "@function" },
    ["@lsp.typemod.method.trait"] = { link = "@function" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.selfKeyword.defaultLibrary"] = { link = "@keyword" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    ["@lsp.typemod.variable.readonly"] = { link = "@constant" },

    -- rust
    ["@lsp.typemod.function.defaultLibrary.rust"] = { fg = colors.syntax.text },
    ["@lsp.type.macro.rust"] = { link = "@function.macro.rust" },
    ["@lsp.type.function.rust"] = { fg = colors.syntax.text },
    ["@lsp.type.namespace.rust"] = { link = "@namespace.rust" },
  }
end

return callback
