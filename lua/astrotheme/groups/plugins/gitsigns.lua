local function callback()
  return {
    GitSignsAdd = { fg = C.ui.green, bg = C.none },
    GitSignsChange = { fg = C.ui.orange, bg = C.none },
    GitSignsDelete = { fg = C.ui.red, bg = C.none },
    MoreMsg = { fg = C.ui.text, bold = true },
    ModeMsg = { fg = C.ui.text, bold = true },
  }
end

return callback
