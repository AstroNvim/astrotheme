local function callback(opts)
  return {
    WhichKey = { fg = C.purple },
    WhichKeyFloat = { bg = opts.floating and C.mantle or C.base },
    WhichKeyBorder = { fg = C.none },
    WhichKeySeperator = { fg = C.overlay0 },
    WhichKeyDesc = { fg = C.purple },
    WhichKeyGroup = { fg = C.blue },
    WhichKeyValue = { fg = C.overlay0 },
  }
end

return callback
