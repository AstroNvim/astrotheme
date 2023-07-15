local function callback(opts)
  local error = C.ui.red
  local hint = C.ui.cyan
  local info = C.ui.blue
  local warn = C.ui.yellow
  return {
    DiagnosticError = { fg = error },
    DiagnosticHint = { fg = hint },
    DiagnosticInfo = { fg = info },
    DiagnosticWarn = { fg = warn },
    DiagnosticUnderlineError = { sp = error, undercurl = true },
    DiagnosticUnderlineHint = { sp = hint, undercurl = true },
    DiagnosticUnderlineInfo = { sp = info, undercurl = true },
    DiagnosticUnderlineWarn = { sp = warn, undercurl = true },
    LspCodeLens = { fg = C.ui.none_text },
    LspCodeLensSeparator = { fg = C.ui.none_text },
    LspReferenceRead = { fg = C.none, bg = C.ui.highlight },
    LspReferenceText = { fg = C.none, bg = C.ui.highlight },
    LspReferenceWrite = { fg = C.none, bg = C.ui.highlight },
    -- LSP Semantic Tokens
    -- Ref: :help lsp-semantics
    ["@lsp.type.builtinType"] = { fg = C.syntax.yellow, bg = C.none },
    ["@lsp.type.keyword"] = { link = "Keyword" },
    ["@lsp.type.operator"] = { link = "Operator" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.variable"] = { link = "@lsp.type.variable" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = {
      fg = opts.simple_syntax_colors and C.syntax.blue or C.syntax.cyan,
      bg = C.none,
    },
    ["@lsp.typemod.function.defaultLibrary"] = {
      fg = opts.simple_syntax_colors and C.syntax.blue or C.syntax.cyan,
      bg = C.none,
    },
    ["@lsp.typemod.function.global"] = {
      fg = opts.simple_syntax_colors and C.syntax.blue or C.syntax.cyan,
      bg = C.none,
    },
    ["@lsp.typemod.method.defaultLibrary"] = {
      fg = opts.simple_syntax_colors and C.syntax.blue or C.syntax.cyan,
      bg = C.none,
    },
    ["@lsp.typemod.method.reference"] = { link = "Function" },
    ["@lsp.typemod.method.trait"] = { link = "Function" },
    ["@lsp.typemod.selfKeyword.defaultLibrary"] = { link = "Keyword" },
    ["@lsp.typemod.variable.defaultLibrary"] = {
      fg = opts.simple_syntax_colors and C.syntax.cyan or C.syntax.yellow,
      bg = C.none,
    },
    ["@lsp.typemod.variable.readonly"] = { link = "Constant" },

    -- rust
    ["@lsp.typemod.enumMember.defaultLibrary.rust"] = { fg = C.syntax.blue, bg = C.none },
    ["@lsp.typemod.function.defaultLibrary.rust"] = { fg = C.syntax.text, bg = C.none },
    ["@lsp.typemod.method.defaultLibrary.rust"] = { fg = C.syntax.blue, bg = C.none },
    ["@lsp.typemod.function.global.rust"] = { fg = C.syntax.blue, bg = C.none },
    ["@lsp.type.macro.rust"] = { fg = C.syntax.red, bg = C.none },
    ["@lsp.type.function.rust"] = { fg = C.syntax.text, bg = C.none },
    ["@lsp.type.namespace.rust"] = { link = "@namespace.rust" },
    -- ["@lsp.type.struct.rust"] = { fg = C.syntax.cyan, bg = C.none },
    -- ["@lsp.type.builtinType.rust"] = { fg = C.syntax.cyan, bg = C.none },
  }
end

return callback
