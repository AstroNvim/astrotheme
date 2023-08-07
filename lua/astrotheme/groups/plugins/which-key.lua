local function callback(opts)
  return {
    WhichKey = { fg = C.ui.cyan },
    WhichKeyFloat = { bg = opts.popup and C.ui.popup or C.ui.base },
    WhichKeyBorder = { fg = C.none },
    WhichKeySeparator = { fg = C.ui.none_text },
    WhichKeyDesc = { fg = C.ui.purple },
    WhichKeyGroup = { fg = C.ui.blue },
    WhichKeyValue = { fg = C.ui.active_text },
  }
end

return callback
