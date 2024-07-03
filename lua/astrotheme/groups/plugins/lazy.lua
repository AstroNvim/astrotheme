---@type AstroThemeCallback
local function callback(c)
  return {
    LazyH1 = { fg = c.ui.base, bg = c.ui.accent, bold = true }, -- home button
    LazyH2 = { fg = c.ui.accent, bold = true }, -- titles
    LazyComment = "Comment",
    LazyNormal = "NormalFloat",
    LazyCommit = { fg = c.ui.text_inactive, bold = true }, -- commit ref
    LazyCommitIssue = { fg = c.ui.yellow },
    LazyCommitType = { fg = c.ui.accent, bold = true }, -- conventional commit type
    LazyCommitScope = { italic = true }, -- conventional commit scope
    LazyDimmed = "Conceal", -- property
    LazyProp = "Conceal", -- property
    LazyValue = { fg = c.ui.green }, -- value of a property
    LazyNoCond = "DiagnosticWarn", -- unloaded icon for a plugin where `cond()` was false
    LazyLocal = { fg = c.ui.yellow },
    LazyProgressDone = { fg = c.ui.green }, -- progress bar done
    LazyProgressTodo = "LineNr", -- progress bar todo
    LazySpecial = { fg = c.ui.blue },
    LazyReasonRuntime = { fg = c.ui.yellow },
    LazyReasonPlugin = { fg = c.ui.blue },
    LazyReasonEvent = { fg = c.ui.yellow },
    LazyReasonKeys = { fg = c.ui.purple },
    LazyReasonStart = { fg = c.ui.red },
    LazyReasonSource = { fg = c.ui.green },
    LazyReasonFt = { fg = c.ui.cyan },
    LazyReasonCmd = { fg = c.ui.orange },
    LazyReasonImport = { fg = c.ui.text },
    LazyButton = "CursorLine",
    LazyButtonActive = "Visual",
    LazyTaskOutput = { fg = c.ui.text }, -- task output
    LazyTaskError = { fg = c.ui.red }, -- task errors
    LazyDir = { fg = c.ui.orange }, -- directory
    LazyUrl = { fg = c.ui.blue, underline = true }, -- url
  }
end

return callback
