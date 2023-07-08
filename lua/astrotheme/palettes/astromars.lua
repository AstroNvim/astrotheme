local c = {
  none = "NONE",
  syntax = {},
  ui = {},
  term = {},
}

--------------------------------
--- Syntax
--------------------------------
c.syntax.red = "#E67C83"
c.syntax.blue = "#82A3B0"
c.syntax.green = "#7FAA55"
c.syntax.yellow = "#CC9300"
c.syntax.purple = "#D085BD"
c.syntax.cyan = "#57AD8C"
c.syntax.orange = "#E08664"
c.syntax.text = "#AA989B"
c.syntax.subtext0 = "#644B50"
c.syntax.subtext1 = "#3B2329"

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

c.ui.tabline = "#18090E"
c.ui.winbar = "#644B50"
c.ui.tool = "#11060B"
c.ui.base = "#0B0406"
c.ui.statusline = "#18090E"
c.ui.split = "#11060B"
c.ui.popup = "#11060B"
c.ui.border = "#FAA27F"
c.ui.current_line = "#17060A"
c.ui.scrollbar = "#FAA27F"
c.ui.selection = "#26343F"
c.ui.highlight = "#242628"
c.ui.text = "#AA989B"

--------------------------------
--- terminal
--------------------------------
c.term.black = c.ui.tabline
c.term.bright_black = c.ui.base

c.term.red = c.syntax.red
c.term.bright_red = c.syntax.red

c.term.green = c.syntax.green
c.term.bright_green = c.syntax.green

c.term.yellow = c.syntax.yellow
c.term.bright_yellow = c.syntax.yellow

c.term.blue = c.syntax.blue
c.term.bright_blue = c.syntax.blue

c.term.purple = c.syntax.purple
c.term.bright_purple = c.syntax.purple

c.term.cyan = c.syntax.cyan
c.term.bright_cyan = c.syntax.cyan

c.term.white = c.ui.base
c.term.bright_white = c.ui.base

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
