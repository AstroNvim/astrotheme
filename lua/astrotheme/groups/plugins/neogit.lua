---@type AstroThemeCallback
local function callback(colors)
  return {
    NeogitDiffDelete = {
      bg = colors.ui.base,
      fg = colors.syntax.red,
    },
    NeogitDiffDeleteHighlight = {
      bg = colors.ui.base,
      fg = colors.syntax.red,
    },
    NeogitDiffAdd = {
      bg = colors.ui.base,
      fg = colors.syntax.green,
    },
    NeogitDiffAddHighlight = {
      bg = colors.ui.base,
      fg = colors.syntax.green,
    },
    NeogitDiffContextHighlight = {
      bg = colors.ui.inactive_base,
    },
    NeogitDiffContext = {
      bg = colors.ui.inactive_base,
      fg = colors.ui.text_inactive,
    },
    NeogitHunkHeader = {
      bg = colors.ui.text_inactive,
      fg = colors.ui.text_active,
    },
  }
end

return callback
