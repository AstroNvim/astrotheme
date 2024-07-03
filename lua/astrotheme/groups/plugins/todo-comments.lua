---@type AstroThemeCallback
local function callback(colors)
  return {
    TodoBgNOTE = { bg = colors.ui.cyan, fg = colors.ui.base, bold = true },
    TodoBgTODO = { bg = colors.ui.blue, fg = colors.ui.base, bold = true },
    TodoBgWARNING = { bg = colors.ui.yellow, fg = colors.ui.base, bold = true },
    TodoBgHACK = { bg = colors.ui.yellow, fg = colors.ui.base, bold = true },
    TodoBgBUG = { bg = colors.ui.red, fg = colors.ui.base, bold = true },

    -- BUG: for some reason if todoBgPERF and TodoBgTEST are not commented
    -- out TodoBgNOTE breaks.

    -- TodoBgPERF = { bg = C.text.green, fg = C.ui.base, bold = true },
    -- TodoBgTEST = { bg = C.text.red, fg = C.ui.base, bold = true },
  }
end

return callback()
