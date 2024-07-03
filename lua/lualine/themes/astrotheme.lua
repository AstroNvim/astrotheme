local c = require("astrotheme.lib.util").set_palettes(require("astrotheme").config)

return {
  normal = {
    a = { fg = c.ui.base, bg = c.syntax.blue, gui = "bold" },
    b = { fg = c.ui.purple, bg = c.ui.statusline },
    c = { fg = c.ui.text_active, bg = c.ui.statusline },
  },
  insert = { a = { fg = c.ui.base, bg = c.ui.green, gui = "bold" } },
  visual = { a = { fg = c.ui.base, bg = c.ui.purple, gui = "bold" } },
  replace = { a = { fg = c.ui.base, bg = c.ui.red, gui = "bold" } },
  command = { a = { fg = c.ui.base, bg = c.ui.yellow, gui = "bold" } },
  terminal = { a = { fg = c.ui.base, bg = c.ui.orange, gui = "bold" } },
  inactive = {
    a = { fg = c.ui.text_inactive, bg = c.ui.base, gui = "bold" },
    b = { fg = c.ui.text_inactive, bg = c.ui.base, gui = "bold" },
    c = { fg = c.ui.text_inactive, bg = c.ui.base, gui = "bold" },
  },
}
