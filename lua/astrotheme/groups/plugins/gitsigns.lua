local function callback()
  return {
    GitSignsAdd = { fg = C.green, bg = C.none },
    GitSignsChange = { fg = C.alt_orange, bg = C.none },
    GitSignsDelete = { fg = C.alt_red, bg = C.none },
    MoreMsg = { fg = C.green, bold = true },
    ModeMsg = { fg = C.subtext1, bold = true },
  }
end

return callback
