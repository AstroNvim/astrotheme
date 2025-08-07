local M = {}

function M.get(style)
  local config = require("astrotheme").config
  if style and config.palette ~= style then config = vim.tbl_deep_extend("force", config, { palette = style }) end
  local c = require("astrotheme.lib.util").set_palettes(config)

  return {
    normal = {
      a = { bg = c.ui.blue, fg = c.ui.statusline, gui = "bold" },
      b = { bg = c.ui.statusline, fg = c.ui.purple },
      c = { bg = c.ui.statusline, fg = c.ui.text_active },
    },

    insert = { a = { bg = c.ui.green, fg = c.ui.statusline, gui = "bold" } },
    command = { a = { bg = c.ui.yellow, fg = c.ui.statusline, gui = "bold" } },
    visual = { a = { bg = c.ui.purple, fg = c.ui.statusline, gui = "bold" } },
    replace = { a = { bg = c.ui.red, fg = c.ui.statusline, gui = "bold" } },
    terminal = { a = { bg = c.ui.green, fg = c.ui.statusline, gui = "bold" } },

    inactive = {
      a = { bg = c.ui.statusline, fg = c.ui.text_inactive, gui = "bold" },
      b = { bg = c.ui.statusline, fg = c.ui.text_inactive, gui = "bold" },
      c = { bg = c.ui.statusline, fg = c.ui.text_inactive, gui = "bold" },
    },
  }
end

return M
