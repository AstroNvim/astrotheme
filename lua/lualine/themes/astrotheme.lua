local colors = require("astrotheme.lib.util").set_palettes(require("astrotheme").config)

return {
  normal = {
    a = { fg = colors.ui.base, bg = colors.syntax.blue, gui = "bold" },
    b = { fg = colors.ui.purple, bg = colors.ui.statusline },
    c = { fg = colors.ui.text_active, bg = colors.ui.statusline },
  },
  insert = { a = { fg = colors.ui.base, bg = colors.ui.green, gui = "bold" } },
  visual = { a = { fg = colors.ui.base, bg = colors.ui.purple, gui = "bold" } },
  replace = { a = { fg = colors.ui.base, bg = colors.ui.red, gui = "bold" } },
  command = { a = { fg = colors.ui.base, bg = colors.ui.yellow, gui = "bold" } },
  terminal = { a = { fg = colors.ui.base, bg = colors.ui.orange, gui = "bold" } },
  inactive = {
    a = { fg = colors.ui.text_inactive, bg = colors.ui.base, gui = "bold" },
    b = { fg = colors.ui.text_inactive, bg = colors.ui.base, gui = "bold" },
    c = { fg = colors.ui.text_inactive, bg = colors.ui.base, gui = "bold" },
  },
}
