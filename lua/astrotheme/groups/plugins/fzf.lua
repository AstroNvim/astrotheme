---@type AstroThemeCallback
local function callback(c, opts)
  local bg = (opts.border and opts.inactive and c.ui.base) or (opts.float and c.ui.prompt) or c.ui.prompt
  return {
    FzfLuaBorder = {
      fg = (opts.border and c.ui.border) or (opts.inactive and c.ui.base) or (opts.float and c.ui.prompt) or c.ui.base,
      bg = bg,
    },
    FzfLuaTitle = {
      fg = (opts.title_invert and c.ui.float) or c.ui.title,
      bg = (opts.title_invert and c.ui.title)
        or (opts.inactive and c.ui.base)
        or (opts.transparent and opts.float and c.ui.base)
        or (opts.float and c.ui.float)
        or (opts.transparent and c.none)
        or c.ui.base,
      bold = true,
    },
    FzfLuaHeaderBind = {
      fg = c.ui.cyan,
    },
    FzfLuaPathLineNr = {
      fg = c.ui.green,
    },
    FzfLuaHeaderText = {
      fg = c.ui.red,
    },
  }
end

return callback
