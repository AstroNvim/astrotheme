---@type AstroThemeCallback
local function callback(c)
  return {
    WhichKey = { fg = c.ui.cyan },
    WhichKeyFloat = "NormalFloat",
    WhichKeyBorder = "FloatBorder",
    WhichKeySeparator = { fg = c.ui.none_text },
    WhichKeyDesc = { fg = c.ui.purple },
    WhichKeyGroup = { fg = c.ui.blue },
    WhichKeyValue = { fg = c.ui.text_active },
  }
end

return callback
