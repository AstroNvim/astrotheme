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
c.syntax.red = "#DF8489"
c.syntax.blue = "#4FA9C6"
c.syntax.green = "#84A860"
c.syntax.yellow = "#C3963D"
c.syntax.purple = "#CD87BA"
c.syntax.cyan = "#4FAD97"
c.syntax.orange = "#EF9474"

c.syntax.comment = "#63646A"
c.syntax.text = "#A5B2BC"
c.syntax.mute = "#444145"

--------------------------------
--- UI
--------------------------------
c.ui.red = "#E77777"
c.ui.blue = "#9CBDC9"
c.ui.green = "#9AC374"
c.ui.yellow = "#FFA31A"
c.ui.purple = "#E8A1D7"
c.ui.cyan = "#88C3AB"
c.ui.orange = "#FAA27F"

c.ui.accent = "#9CBDC9"

c.ui.tabline = "#281E22"
c.ui.winbar = "#8D8184"
c.ui.tool = "#1A1113"
c.ui.base = "#1E1517"
c.ui.inactive_base = "#1A1113"
c.ui.statusline = "#281E22"
c.ui.split = "#281E22"
c.ui.float = "#1A1113"
c.ui.title = c.ui.accent
c.ui.border = "#736468"
c.ui.current_line = "#22191B"
c.ui.scrollbar = c.ui.accent
c.ui.selection = "#1B282C"
-- TODO: combine menu_selection and selection
c.ui.menu_selection = c.ui.selection
c.ui.highlight = "#251D1F"
c.ui.none_text = "#393337"
c.ui.text = "#8B7079"
c.ui.text_active = "#A5B2BC"
c.ui.text_inactive = "#68545B"
c.ui.text_match = "#ffeeee"

c.ui.prompt = "#281E22"

--------------------------------
--- terminal
--------------------------------
c.term.black = c.ui.tabline
c.term.bright_black = color.new(c.ui.base):lighten(35):tohex()

c.term.red = c.syntax.red
c.term.bright_red = color.new(c.syntax.red):lighten(35):tohex()

c.term.green = c.syntax.green
c.term.bright_green = color.new(c.syntax.green):lighten(35):tohex()

c.term.yellow = c.syntax.yellow
c.term.bright_yellow = color.new(c.syntax.yellow):lighten(35):tohex()

c.term.blue = c.syntax.blue
c.term.bright_blue = color.new(c.syntax.blue):lighten(35):tohex()

c.term.purple = c.syntax.purple
c.term.bright_purple = color.new(c.syntax.purple):lighten(35):tohex()

c.term.cyan = c.syntax.cyan
c.term.bright_cyan = color.new(c.syntax.cyan):lighten(35):tohex()

c.term.white = c.ui.text
c.term.bright_white = color.new(c.syntax.text):lighten(35):tohex()

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
