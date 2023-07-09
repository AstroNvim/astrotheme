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

c.syntax.comment = "#967E83"
c.syntax.text = "#B2979D"
c.syntax.subtext0 = "#967E83"
c.syntax.subtext1 = "#7C6469"

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

c.ui.tabline = "#1E0F14"
c.ui.winbar = "#8D8184"
c.ui.tool = "#180A10"
c.ui.base = "#0B0204"
c.ui.inactive_base = "#180A10"
c.ui.statusline = "#1E0F14"
c.ui.split = "#1E0F14"
c.ui.popup = "#1E0F14"
c.ui.float = "#D8D6D5"
c.ui.title = "#88C3AB"
c.ui.border = "#736468"
c.ui.current_line = "#100407"
c.ui.scrollbar = "#736468"
c.ui.selection = "#1B282C"
c.ui.highlight = "#2A1F22"
c.ui.none_text = "#181213"
c.ui.text = "#B2979D"

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
