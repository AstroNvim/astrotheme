---@type AstroThemeCallback
local function callback(opts)
  local bg = (opts.float and C.ui.base) or (opts.transparent and C.none) or C.ui.base

  return {
    SpotlightTitle = {
      fg = (opts.title_invert and C.ui.base) or C.ui.title,
      bg = (opts.title_invert and C.ui.title) or (opts.transparent and C.none) or C.ui.base,
      blend = opts.title_invert and 0 or nil,
      bold = true,
    },
    SpotlightBorder = {
      fg = opts.border and C.ui.border or C.ui.base,
      bg = bg,
    },
    SpotlightNormal = {
      fg = C.ui.text,
      bg = bg,
    },
    SpotlightWinSeparator = {
      fg = C.ui.inactive_base,
      bg = opts.transparent and C.none or C.ui.inactive_base,
    },
    SpotlightNormalNC = {
      fg = C.syntax.text,
      bg = opts.transparent and C.none or C.ui.inactive_base,
    },
  }
end

return callback
