---@type AstroThemeCallback
local function callback()
  return {
    TodoBgNOTE = { bg = C.ui.cyan, fg = C.ui.base, bold = true },
    TodoBgTODO = { bg = C.ui.blue, fg = C.ui.base, bold = true },
    TodoBgWARNING = { bg = C.ui.yellow, fg = C.ui.base, bold = true },
    TodoBgHACK = { bg = C.ui.yellow, fg = C.ui.base, bold = true },
    TodoBgBUG = { bg = C.ui.red, fg = C.ui.base, bold = true },

    -- BUG: for some reason if todoBgPERF and TodoBgTEST are not commented
    -- out TodoBgNOTE breaks.

    -- TodoBgPERF = { bg = C.text.green, fg = C.ui.base, bold = true },
    -- TodoBgTEST = { bg = C.text.red, fg = C.ui.base, bold = true },
  }
end

return callback()
