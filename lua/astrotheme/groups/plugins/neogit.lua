---@type AstroThemeCallback
local function callback(c)
  return {
    NeogitDiffDelete = {
      bg = c.ui.base,
      fg = c.syntax.red,
    },
    NeogitDiffDeleteHighlight = {
      bg = c.ui.base,
      fg = c.syntax.red,
    },
    NeogitDiffAdd = {
      bg = c.ui.base,
      fg = c.syntax.green,
    },
    NeogitDiffAddHighlight = {
      bg = c.ui.base,
      fg = c.syntax.green,
    },
    NeogitDiffContextHighlight = {
      bg = c.ui.inactive_base,
    },
    NeogitDiffContext = {
      bg = c.ui.inactive_base,
      fg = c.ui.text_inactive,
    },
    NeogitHunkHeader = {
      bg = c.ui.text_inactive,
      fg = c.ui.text_active,
    },
  }
end

return callback
