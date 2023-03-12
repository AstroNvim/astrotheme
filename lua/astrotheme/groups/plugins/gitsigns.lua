local function callback()
  return {
    GitSignsAdd = { fg = C.green, bg = C.none },
    GitSignsChange = { fg = C.dark_orange, bg = C.none },
    GitSignsDelete = { fg = C.dark_red, bg = C.none },
    MoreMsg = { fg = C.green, bold = true },
    ModeMsg = { fg = C.subtext0, bold = true },
  }
end

return callback
