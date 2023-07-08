local c = {
  none = "NONE",
  syntax = {},
  ui = {},
  term = {},
}

--------------------------------
--- Syntax
--------------------------------
c.syntax.red = "#FD9298"
c.syntax.blue = "#70B6F3"
c.syntax.green = "#8FBE6C"
c.syntax.yellow = "#E1A640"
c.syntax.purple = "#D69BE6"
c.syntax.cyan = "#45C3B9"
c.syntax.orange = "#FB976A"
c.syntax.text = "#AEAEAE"
c.syntax.subtext0 = "#777777"
c.syntax.subtext1 = "#4B4B4B"

--------------------------------
--- UI
--------------------------------
c.ui.red = "#f37880"
c.ui.blue = "#44aaf9"
c.ui.green = "#75ad47"
c.ui.yellow = "#df9b03"
c.ui.purple = "#cc83e3"
c.ui.cyan = "#00b298"
c.ui.orange = "#EB8331"

c.ui.tabline = "#101114"
c.ui.winbar = "#777777"
c.ui.tool = "#141618"
c.ui.base = "#181A1C"
c.ui.statusline = "#141618"
c.ui.split = "#141618"
c.ui.popup = "#141618"
c.ui.border = "#00b298"
c.ui.current_line = "#1C1E20"
c.ui.scrollbar = "#00b298"
c.ui.selection = "#26343F"
c.ui.highlight = "#242628"
c.ui.text = "#AEAEAE"

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
