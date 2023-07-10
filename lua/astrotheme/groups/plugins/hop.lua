local function callback()
  return {
    HopNextKey = { fg = C.ui.red, bold = true },
    HopNextKey1 = { fg = C.ui.cyan, bold = true },
    HopNextKey2 = { fg = C.ui.blue },
    HopUnmatched = { fg = C.syntax.mute },
  }
end

return callback
