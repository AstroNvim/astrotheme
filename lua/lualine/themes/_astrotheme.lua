local M = {}

function M.get(style)
  local config = require("astrotheme").config
  if style and config.palette ~= style then config = vim.tbl_deep_extend("force", config, { palette = style }) end
  local c = require("astrotheme.lib.util").set_palettes(config)

  return {
    normal = {
      a = { bg = c.ui.blue, fg = c.ui.tabline, gui = "bold" },
      b = { bg = c.ui.tabline, fg = c.ui.blue },
      c = { bg = c.ui.tabline, fg = c.ui.text_inactive },
    },

    insert = {
      a = { bg = c.ui.green, fg = c.ui.tabline, gui = "bold" },
      b = { bg = c.ui.tabline, fg = c.ui.green },
    },

    command = {
      a = { bg = c.ui.yellow, fg = c.ui.tabline, gui = "bold" },
      b = { bg = c.ui.tabline, fg = c.ui.yellow },
    },

    visual = {
      a = { bg = c.ui.purple, fg = c.ui.tabline, gui = "bold" },
      b = { bg = c.ui.tabline, fg = c.ui.purple },
    },
    replace = {
      a = { bg = c.ui.red, fg = c.ui.tabline, gui = "bold" },
      b = { bg = c.ui.tabline, fg = c.ui.red },
    },

    terminal = {
      a = { bg = c.ui.green, fg = c.ui.tabline, gui = "bold" },
      b = { bg = c.ui.tabline, fg = c.ui.green },
    },

    inactive = {
      a = { bg = c.ui.tabline, fg = c.ui.blue },
      b = { bg = c.ui.tabline, fg = c.ui.tabline, gui = "bold" },
      c = { bg = c.ui.tabline, fg = c.ui.tabline },
    },
  }
end

return M
