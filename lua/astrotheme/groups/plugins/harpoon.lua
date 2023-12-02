local function callback(opts)
  return {
    HarpoonWindow = {
      fg = C.ui.text,
      bg = (opts.border and opts.inactive and C.ui.base)
        or (opts.border and opts.float and C.ui.base)
        or (opts.inactive and C.ui.prompt)
        or (opts.float and C.ui.prompt)
        or (opts.transparent and C.none)
        or C.ui.base,
      blend = vim.o.winblend or 0,
    },
    HarpoonBorder = {
      fg = (opts.border and C.ui.border) or (opts.inactive and C.ui.base) or (opts.float and C.ui.prompt) or C.ui.base,
      bg = (opts.border and opts.inactive and C.ui.base) or (opts.float and C.ui.prompt) or C.ui.prompt,
      blend = vim.o.winblend or 0,
    },
    HarpoonTitle = {
      fg = (opts.title_invert and C.ui.float) or C.ui.title,
      bg = (opts.title_invert and C.ui.title)
        or (opts.float and C.ui.prompt)
        or (opts.transparent and C.none)
        or C.ui.base,
      blend = vim.o.winblend or 0,
      bold = true,
    },
  }
end

return callback
