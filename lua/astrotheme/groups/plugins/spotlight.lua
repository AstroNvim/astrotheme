local function callback(opts)
  return {
    SpotlightTitle = {
      fg = (opts.title_invert and C.ui.tool) or C.ui.title,
      bg = (opts.title_invert and C.ui.title)
        -- or (opts.transparent and C.none)
        or C.ui.base,
      blend = opts.title_invert and 0 or vim.o.winblend or 0,
      bold = true,
    },
    SpotlightBorder = {
      fg = C.ui.base,
      bg = C.ui.base,
      blend = vim.o.winblend or 0,
    },
    SpotlightNormal = {
      fg = C.ui.text,
      bg = C.ui.base,
      blend = vim.o.winblend or 0,
    },
    SpotlightWinSeparator = {
      fg = C.ui.tabline,
      bg = C.ui.tabline,
      blend = vim.o.winblend or 0,
    },
    SpotlightNormalNC = {
      fg = C.ui.tabline,
      bg = C.ui.tabline,
      blend = vim.o.winblend or 0,
    },
  }
end

return callback
