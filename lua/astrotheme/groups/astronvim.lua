---@type AstroThemeCallback
local function callback()
  return {
    HighlightURL = { underline = true },
    HeirlineInactive = "StatusInactive",
    HeirlineNormal = "StatusNormal",
    HeirlineInsert = "StatusInsert",
    HeirlineVisual = "StatusVisual",
    HeirlineReplace = "StatusReplace",
    HeirlineCommand = "StatusCommand",
    HeirlineTerminal = "StatusTerminal",
  }
end

return callback
