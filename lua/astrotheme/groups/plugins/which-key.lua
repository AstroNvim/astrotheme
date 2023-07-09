local function callback(opts)
  return {
    WhichKey = { fg = C.syntax.cyan },
    WhichKeyFloat = { bg = opts.popup and C.ui.popup or C.ui.base },
    WhichKeyBorder = { fg = C.none },
    WhichKeySeperator = { fg = C.syntax.subtext1 },
    WhichKeyDesc = { fg = C.syntax.purple },
    WhichKeyGroup = { fg = C.syntax.blue },
    WhichKeyValue = { fg = C.syntax.subtext0 },
  }
end

return callback
