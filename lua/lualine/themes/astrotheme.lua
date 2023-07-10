local C = require("astrotheme.lib.util").set_palettes(require("astrotheme").config)

return {
  normal = {
    a = { fg = C.ui.base, bg = C.syntax.blue, gui = "bold" },
    b = { fg = C.ui.purple, bg = C.ui.statusline },
    c = { fg = C.ui.active_text, bg = C.ui.statusline },
  },
  insert = { a = { fg = C.ui.base, bg = C.ui.green, gui = "bold" } },
  visual = { a = { fg = C.ui.base, bg = C.ui.purple, gui = "bold" } },
  replace = { a = { fg = C.ui.base, bg = C.ui.red, gui = "bold" } },
  command = { a = { fg = C.ui.base, bg = C.ui.yellow, gui = "bold" } },
  terminal = { a = { fg = C.ui.base, bg = C.ui.orange, gui = "bold" } },
  inactive = {
    a = { fg = C.ui.text_inactive, bg = C.ui.base, gui = "bold" },
    b = { fg = C.ui.text_inactive, bg = C.ui.base, gui = "bold" },
    c = { fg = C.ui.text_inactive, bg = C.ui.base, gui = "bold" },
  },
}
