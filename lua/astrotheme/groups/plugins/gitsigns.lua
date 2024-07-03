---@type AstroThemeCallback
local function callback(c)
  return {
    GitSignsAdd = { fg = c.ui.green, bg = c.none },
    GitSignsChange = { fg = c.ui.orange, bg = c.none },
    GitSignsDelete = { fg = c.ui.red, bg = c.none },
    MoreMsg = { fg = c.ui.text, bold = true },
    ModeMsg = { fg = c.ui.text, bold = true },
  }
end

return callback
