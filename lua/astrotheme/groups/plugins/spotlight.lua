---@type AstroThemeCallback
local function callback(colors, opts)
  local bg = (opts.float and colors.ui.base) or (opts.transparent and colors.none) or colors.ui.base

  return {
    SpotlightTitle = {
      fg = (opts.title_invert and colors.ui.base) or colors.ui.title,
      bg = (opts.title_invert and colors.ui.title) or (opts.transparent and colors.none) or colors.ui.base,
      blend = opts.title_invert and 0 or nil,
      bold = true,
    },
    SpotlightBorder = {
      fg = opts.border and colors.ui.border or colors.ui.base,
      bg = bg,
    },
    SpotlightNormal = {
      fg = colors.ui.text,
      bg = bg,
    },
    SpotlightWinSeparator = {
      fg = colors.ui.inactive_base,
      bg = opts.transparent and colors.none or colors.ui.inactive_base,
    },
    SpotlightNormalNC = {
      fg = colors.syntax.text,
      bg = opts.transparent and colors.none or colors.ui.inactive_base,
    },
  }
end

return callback
