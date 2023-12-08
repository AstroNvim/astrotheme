---@type AstroThemeCallback
local function callback()
  return {
    NeogitDiffDelete = {
      bg = C.ui.base,
      fg = C.syntax.red,
    },
    NeogitDiffDeleteHighlight = {
      bg = C.ui.base,
      fg = C.syntax.red,
    },
    NeogitDiffAdd = {
      bg = C.ui.base,
      fg = C.syntax.green,
    },
    NeogitDiffAddHighlight = {
      bg = C.ui.base,
      fg = C.syntax.green,
    },
    NeogitDiffContextHighlight = {
      bg = C.ui.inactive_base,
    },
    NeogitDiffContext = {
      bg = C.ui.inactive_base,
      fg = C.ui.text_inactive,
    },
    NeogitHunkHeader = {
      bg = C.ui.text_inactive,
      fg = C.ui.text_active,
    },
  }
end

return callback
