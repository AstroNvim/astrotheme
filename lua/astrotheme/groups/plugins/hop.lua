local function callback()
  return {
    HopNextKey = { fg = C.red, bold = true },
    HopNextKey1 = { fg = C.cyan, bold = true },
    HopNextKey2 = { fg = C.blue },
    HopUnmatched = { fg = C.subtext0 },
  }
end

return callback
