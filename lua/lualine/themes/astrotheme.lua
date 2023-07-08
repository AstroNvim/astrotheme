local C = require("astrotheme.lib.util").set_palettes(require("astrotheme").config)

return {
  normal = {
    a = { fg = C.ui.base, bg = C.syntax.blue, gui = "bold" },
    b = { fg = C.syntax.purple, bg = C.ui.statusline },
    c = { fg = C.syntax.subtext0, bg = C.ui.statusline },
  },
  insert = { a = { fg = C.ui.base, bg = C.syntax.green, gui = "bold" } },
  visual = { a = { fg = C.ui.base, bg = C.syntax.purple, gui = "bold" } },
  replace = { a = { fg = C.ui.base, bg = C.syntax.red, gui = "bold" } },
  command = { a = { fg = C.ui.base, bg = C.syntax.yellow, gui = "bold" } },
  terminal = { a = { fg = C.ui.base, bg = C.syntax.orange, gui = "bold" } },
  inactive = {
    a = { fg = C.syntax.subtext1, bg = C.ui.base, gui = "bold" },
    b = { fg = C.syntax.subtext1, bg = C.ui.base, gui = "bold" },
    c = { fg = C.syntax.subtext1, bg = C.ui.base, gui = "bold" },
  },
}
