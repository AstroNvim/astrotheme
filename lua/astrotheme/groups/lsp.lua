---@type AstroThemeCallback
local function callback(c)
  local error = c.ui.red
  local hint = c.ui.cyan
  local info = c.ui.blue
  local warn = c.ui.yellow
  local okay = c.ui.green
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
    LspCodeLens = { fg = c.ui.none_text },
    LspCodeLensSeparator = { fg = c.ui.none_text },
    LspReferenceRead = { fg = c.none, bg = c.ui.highlight },
    LspReferenceText = "LspReferenceRead",
    LspReferenceWrite = "LspReferenceRead",
    -- LSP Semantic Tokens
    -- Ref: :help lsp-semantics
    ["@lsp.type.boolean"] = "@boolean",
    ["@lsp.type.builtinType"] = "@type.builtin",
    ["@lsp.type.comment"] = "@comment",
    ["@lsp.type.enum"] = "@type",
    ["@lsp.type.enumMember"] = "@constant",
    ["@lsp.type.escapeSequence"] = "@string.escape",
    ["@lsp.type.formatSpecifier"] = "@punctuation.special",
    ["@lsp.type.interface"] = "@interface",
    ["@lsp.type.keyword"] = "@keyword",
    ["@lsp.type.namespace"] = "@namespace",
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

    -- rust
    ["@lsp.typemod.function.defaultLibrary.rust"] = { fg = c.syntax.text },
    ["@lsp.type.macro.rust"] = "@function.macro.rust",
    ["@lsp.type.function.rust"] = { fg = c.syntax.text },
    ["@lsp.type.namespace.rust"] = "@namespace.rust",
  }
end

return callback
