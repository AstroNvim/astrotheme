local function callback()
  return {
    LazyH1 = { fg = C.ui.base, bg = C.ui.accent, bold = true }, -- home button
    LazyH2 = { fg = C.ui.accent, bold = true }, -- titles
    LazyComment = { link = "Comment" },
    LazyNormal = { link = "NormalFloat" },
    LazyCommit = { fg = C.ui.text_inactive, bold = true }, -- commit ref
    LazyCommitIssue = { fg = C.ui.yellow },
    LazyCommitType = { fg = C.ui.accent, bold = true }, -- conventional commit type
    LazyCommitScope = { italic = true }, -- conventional commit scope
    LazyDimmed = { link = "Conceal" }, -- property
    LazyProp = { link = "Conceal" }, -- property
    LazyValue = { fg = C.ui.green }, -- value of a property
    LazyNoCond = { link = "DiagnosticWarn" }, -- unloaded icon for a plugin where `cond()` was false
    LazyLocal = { fg = C.ui.yellow },
    LazyProgressDone = { fg = C.ui.green }, -- progress bar done
    LazyProgressTodo = { link = "LineNr" }, -- progress bar todo
    LazySpecial = { fg = C.ui.blue },
    LazyReasonRuntime = { fg = C.ui.yellow },
    LazyReasonPlugin = { fg = C.ui.blue },
    LazyReasonEvent = { fg = C.ui.yellow },
    LazyReasonKeys = { fg = C.ui.purple },
    LazyReasonStart = { fg = C.ui.red },
    LazyReasonSource = { fg = C.ui.green },
    LazyReasonFt = { fg = C.ui.cyan },
    LazyReasonCmd = { fg = C.ui.orange },
    LazyReasonImport = { fg = C.ui.text },
    LazyButton = { link = "CursorLine" },
    LazyButtonActive = { link = "Visual" },
    LazyTaskOutput = { fg = C.ui.text }, -- task output
    LazyTaskError = { fg = C.ui.red }, -- task errors
    LazyDir = { fg = C.ui.orange }, -- directory
    LazyUrl = { fg = C.ui.blue, underline = true }, -- url
  }
end

return callback
