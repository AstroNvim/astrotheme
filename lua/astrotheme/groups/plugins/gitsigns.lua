local function callback()
  return {
    GitSignsAdd = { fg = C.ui.green, bg = C.none },
    GitSignsChange = { fg = C.ui.orange, bg = C.none },
    GitSignsDelete = { fg = C.ui.red, bg = C.none },
    MoreMsg = { fg = C.ui.green, bold = true },
    ModeMsg = { fg = C.syntax.subtext1, bold = true },
  }
end

return callback
