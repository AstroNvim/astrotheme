local C = require("astrotheme.lib.util").set_palettes(require("astrotheme").config)

return {
  normal = {
    a = { fg = C.overlay1, bg = C.blue, gui = "bold" },
    b = { fg = C.overlay1, bg = C.overlay0 },
    c = { fg = C.overlay1, bg = C.overlay0 },
  },
  insert = { a = { fg = C.overlay1, bg = C.green, gui = "bold" } },
  visual = { a = { fg = C.overlay1, bg = C.purple, gui = "bold" } },
  replace = { a = { fg = C.overlay1, bg = C.red, gui = "bold" } },
  command = { a = { fg = C.overlay1, bg = C.yellow, gui = "bold" } },
  terminal = { a = { fg = C.overlay1, bg = C.green, gui = "bold" } },
  inactive = {
    a = { fg = C.overlay0, bg = C.overlay1, gui = "bold" },
    b = { fg = C.overlay0, bg = C.overlay1 },
    c = { fg = C.overlay0, bg = C.overlay1 },
  },
}
