local M = {}

function M.get(style)
  if not style then style = require("astrotheme").config.palette end
  local colors = require("astrotheme.palettes." .. style)

  return {
    normal = {
      a = { bg = colors.ui.blue, fg = colors.ui.tabline, gui = "bold" },
      b = { bg = colors.ui.tabline, fg = colors.ui.blue },
      c = { bg = colors.ui.tabline, fg = colors.ui.text_inactive },
    },

    insert = {
      a = { bg = colors.ui.green, fg = colors.ui.tabline, gui = "bold" },
      b = { bg = colors.ui.tabline, fg = colors.ui.green },
    },

    command = {
      a = { bg = colors.ui.yellow, fg = colors.ui.tabline, gui = "bold" },
      b = { bg = colors.ui.tabline, fg = colors.ui.yellow },
    },

    visual = {
      a = { bg = colors.ui.magenta, fg = colors.ui.tabline, gui = "bold" },
      b = { bg = colors.ui.tabline, fg = colors.ui.magenta },
    },
    replace = {
      a = { bg = colors.ui.red, fg = colors.ui.tabline, gui = "bold" },
      b = { bg = colors.ui.tabline, fg = colors.ui.red },
    },

    terminal = {
      a = { bg = colors.ui.green, fg = colors.ui.tabline, gui = "bold" },
      b = { bg = colors.ui.tabline, fg = colors.ui.green },
    },

    inactive = {
      a = { bg = colors.ui.tabline, fg = colors.ui.blue },
      b = { bg = colors.ui.tabline, fg = colors.ui.tabline, gui = "bold" },
      c = { bg = colors.ui.tabline, fg = colors.ui.tabline },
    },
  }
end

return M
