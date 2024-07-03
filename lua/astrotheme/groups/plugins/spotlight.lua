---@type AstroThemeCallback
local function callback(c, opts)
  local bg = (opts.float and c.ui.base) or (opts.transparent and c.none) or c.ui.base

  return {
    SpotlightTitle = {
      fg = (opts.title_invert and c.ui.base) or c.ui.title,
      bg = (opts.title_invert and c.ui.title) or (opts.transparent and c.none) or c.ui.base,
      blend = opts.title_invert and 0 or nil,
      bold = true,
    },
    SpotlightBorder = {
      fg = opts.border and c.ui.border or c.ui.base,
      bg = bg,
    },
    SpotlightNormal = {
      fg = c.ui.text,
      bg = bg,
    },
    SpotlightWinSeparator = {
      fg = c.ui.inactive_base,
      bg = opts.transparent and c.none or c.ui.inactive_base,
    },
    SpotlightNormalNC = {
      fg = c.syntax.text,
      bg = opts.transparent and c.none or c.ui.inactive_base,
    },
  }
end

return callback
