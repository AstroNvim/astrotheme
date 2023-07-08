local function callback()
  return {
    HopNextKey = { fg = C.syntax.red, bold = true },
    HopNextKey1 = { fg = C.syntax.cyan, bold = true },
    HopNextKey2 = { fg = C.syntax.blue },
    HopUnmatched = { fg = C.syntax.subtext1 },
  }
end

return callback
