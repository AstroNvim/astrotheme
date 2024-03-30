local color = require "astrotheme.lib.color"

---@class AstroThemePalette
local c = {
  none = "NONE",
  syntax = {},
  ui = {},
  term = {},
}

--------------------------------
--- Syntax
--------------------------------
c.syntax.red = "#990000"
c.syntax.blue = "#00508A"
c.syntax.green = "#345E00"
c.syntax.yellow = "#7300B8"
c.syntax.purple = "#9E007C"
c.syntax.cyan = "#00615B"
c.syntax.orange = "#A34500"

c.syntax.comment = "#8B9297"
c.syntax.text = "#4F4F4F"

--------------------------------
--- UI
--------------------------------
c.ui.red = "#E72F1F"
c.ui.blue = "#3F8CEA"
c.ui.green = "#42AD17"
c.ui.yellow = "#E69400"
c.ui.purple = "#671FF0"
c.ui.cyan = "#21B386"
c.ui.orange = "#F0740A"

c.ui.accent = c.ui.purple

c.ui.tabline = "#E1E2E4"
c.ui.winbar = "#999FA3"
c.ui.tool = "#F0F0F1"
c.ui.base = "#F7F8F8"
c.ui.inactive_base = "#EAEBEB"
c.ui.statusline = "#E1E2E4"
c.ui.split = "#E8E9EA"
c.ui.float = "#E1E2E3"
c.ui.title = c.ui.accent
c.ui.border = c.ui.accent
c.ui.current_line = "#EAEBEB"
c.ui.scrollbar = c.ui.accent
c.ui.selection = "#E7E9EB"
-- TODO: combine menu_selection and selection
c.ui.menu_selection = c.ui.selection
c.ui.highlight = "#DADBDD"
c.ui.none_text = "#B5B9BD"
c.ui.text = "#737474"
c.ui.text_active = "#424446"
c.ui.text_inactive = "#AEB3B6"
c.ui.text_match = "#17191C"

c.ui.prompt = "#F0F0F1"

--------------------------------
--- terminal
--------------------------------
c.term.black = c.ui.tabline
c.term.bright_black = color.new(c.ui.tabline):darken(40):tohex()

c.term.red = c.syntax.red
c.term.bright_red = color.new(c.syntax.red):lighten(40):tohex()

c.term.green = c.syntax.green
c.term.bright_green = color.new(c.syntax.green):lighten(40):tohex()

c.term.yellow = c.syntax.yellow
c.term.bright_yellow = color.new(c.syntax.yellow):lighten(40):tohex()

c.term.blue = c.syntax.blue
c.term.bright_blue = color.new(c.syntax.blue):lighten(40):tohex()

c.term.purple = c.syntax.purple
c.term.bright_purple = color.new(c.syntax.purple):lighten(40):tohex()

c.term.cyan = c.syntax.cyan
c.term.bright_cyan = color.new(c.syntax.cyan):lighten(40):tohex()

c.term.white = c.ui.text
c.term.bright_white = color.new(c.syntax.text):lighten(10):tohex()

c.term.background = c.ui.base
c.term.foreground = c.ui.text

--------------------------------
--- Icons
--------------------------------
c.icon = {
  c = "#519aba",
  css = "#61afef",
  deb = "#a1b7ee",
  docker = "#384d54",
  html = "#de8c92",
  jpeg = "#c882e7",
  jpg = "#c882e7",
  js = "#ebcb8b",
  jsx = "#519ab8",
  kt = "#7bc99c",
  lock = "#c4c720",
  lua = "#51a0cf",
  mp3 = "#d39ede",
  mp4 = "#9ea3de",
  out = "#abb2bf",
  png = "#c882e7",
  py = "#a3b8ef",
  rb = "#ff75a0",
  robots = "#abb2bf",
  rpm = "#fca2aa",
  rs = "#dea584",
  toml = "#39bf39",
  ts = "#519aba",
  ttf = "#abb2bf",
  vue = "#7bc99c",
  woff = "#abb2bf",
  woff2 = "#abb2bf",
  zip = "#f9d71c",
  md = "#519aba",
  pkg = "#d39ede",
}

return c
