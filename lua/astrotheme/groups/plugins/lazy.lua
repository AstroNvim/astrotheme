---@type AstroThemeCallback
local function callback(colors)
  return {
    LazyH1 = { fg = colors.ui.base, bg = colors.ui.accent, bold = true }, -- home button
    LazyH2 = { fg = colors.ui.accent, bold = true }, -- titles
    LazyComment = { link = "Comment" },
    LazyNormal = { link = "NormalFloat" },
    LazyCommit = { fg = colors.ui.text_inactive, bold = true }, -- commit ref
    LazyCommitIssue = { fg = colors.ui.yellow },
    LazyCommitType = { fg = colors.ui.accent, bold = true }, -- conventional commit type
    LazyCommitScope = { italic = true }, -- conventional commit scope
    LazyDimmed = { link = "Conceal" }, -- property
    LazyProp = { link = "Conceal" }, -- property
    LazyValue = { fg = colors.ui.green }, -- value of a property
    LazyNoCond = { link = "DiagnosticWarn" }, -- unloaded icon for a plugin where `cond()` was false
    LazyLocal = { fg = colors.ui.yellow },
    LazyProgressDone = { fg = colors.ui.green }, -- progress bar done
    LazyProgressTodo = { link = "LineNr" }, -- progress bar todo
    LazySpecial = { fg = colors.ui.blue },
    LazyReasonRuntime = { fg = colors.ui.yellow },
    LazyReasonPlugin = { fg = colors.ui.blue },
    LazyReasonEvent = { fg = colors.ui.yellow },
    LazyReasonKeys = { fg = colors.ui.purple },
    LazyReasonStart = { fg = colors.ui.red },
    LazyReasonSource = { fg = colors.ui.green },
    LazyReasonFt = { fg = colors.ui.cyan },
    LazyReasonCmd = { fg = colors.ui.orange },
    LazyReasonImport = { fg = colors.ui.text },
    LazyButton = { link = "CursorLine" },
    LazyButtonActive = { link = "Visual" },
    LazyTaskOutput = { fg = colors.ui.text }, -- task output
    LazyTaskError = { fg = colors.ui.red }, -- task errors
    LazyDir = { fg = colors.ui.orange }, -- directory
    LazyUrl = { fg = colors.ui.blue, underline = true }, -- url
  }
end

return callback
