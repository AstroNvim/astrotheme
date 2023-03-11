local function callback()
  return {
    HighlightURL = { underline = true },
    HeirlineInactive = { link = "StatusInactive" },
    HeirlineNormal = { link = "StatusNormal" },
    HeirlineInsert = { link = "StatusInsert" },
    HeirlineVisual = { link = "StatusVisual" },
    HeirlineReplace = { link = "StatusReplace" },
    HeirlineCommand = { link = "StatusCommand" },
    HeirlineTerminal = { link = "StatusTerminal" },
  }
end

return callback
