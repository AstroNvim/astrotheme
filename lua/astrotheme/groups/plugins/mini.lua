---@type AstroThemeCallback
local function callback(...)
  return vim.tbl_deep_extend(
    "force",
    require "astrotheme.groups.plugins.ministarter"(...),
    require "astrotheme.groups.plugins.miniicons"(...)
  )
end

return callback
