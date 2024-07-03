---@type AstroThemeCallback
local function callback(c)
  return {
    TodoBgNOTE = { bg = c.ui.cyan, fg = c.ui.base, bold = true },
    TodoBgTODO = { bg = c.ui.blue, fg = c.ui.base, bold = true },
    TodoBgWARNING = { bg = c.ui.yellow, fg = c.ui.base, bold = true },
    TodoBgHACK = { bg = c.ui.yellow, fg = c.ui.base, bold = true },
    TodoBgBUG = { bg = c.ui.red, fg = c.ui.base, bold = true },

    -- BUG: for some reason if todoBgPERF and TodoBgTEST are not commented
    -- out TodoBgNOTE breaks.

    -- TodoBgPERF = { bg = C.text.green, fg = C.ui.base, bold = true },
    -- TodoBgTEST = { bg = C.text.red, fg = C.ui.base, bold = true },
  }
end

return callback()
