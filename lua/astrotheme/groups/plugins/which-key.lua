---@type AstroThemeCallback
local function callback(colors)
  return {
    WhichKey = { fg = colors.ui.cyan },
    WhichKeyFloat = { link = "NormalFloat" },
    WhichKeyBorder = { link = "FloatBorder" },
    WhichKeySeparator = { fg = colors.ui.none_text },
    WhichKeyDesc = { fg = colors.ui.purple },
    WhichKeyGroup = { fg = colors.ui.blue },
    WhichKeyValue = { fg = colors.ui.text_active },
  }
end

return callback
