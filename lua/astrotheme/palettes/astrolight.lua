local c = {
  none = "NONE",
  syntax = {},
  ui = {},
  term = {},
}

--------------------------------
--- Syntax
--------------------------------
c.syntax.red = "#A13F37"
c.syntax.blue = "#006E89"
c.syntax.green = "#467118"
c.syntax.yellow = "#805C00"
c.syntax.purple = "#90437A"
c.syntax.cyan = "#007652"
c.syntax.orange = "#954D00"

c.syntax.comment = "#937C7A"
c.syntax.text = "#815654"

--------------------------------
--- UI
--------------------------------
c.ui.red = "#D04F4E"
c.ui.blue = "#0090A2"
c.ui.green = "#569400"
c.ui.yellow = "#AC7300"
c.ui.purple = "#BD51A4"
c.ui.cyan = "#00976C"
c.ui.orange = "#D05312"

c.ui.accent = "#D04F4E"

c.ui.tabline = "#D8D6D5"
c.ui.winbar = "#926461"
c.ui.tool = "#F9DCD1"
c.ui.base = "#FEEEEE"
c.ui.inactive_base = "#F9DCD1"
c.ui.statusline = "#D8D6D5"
c.ui.split = "#D8D6D5"
c.ui.float = "#F9DCD1"
c.ui.title = c.ui.accent
c.ui.border = c.ui.accent
c.ui.current_line = "#F6DDD8"
c.ui.scrollbar = c.ui.accent
c.ui.selection = "#BBC9D7"
-- TODO: combine menu_selection and selection
c.ui.menu_selection = c.ui.selection
c.ui.highlight = "#E7CFCA"
c.ui.none_text = "#D0B6B6"
c.ui.text = "#9E7876"
c.ui.text_active = "#815654"
c.ui.text_inactive = "#937C7A"
c.ui.text_match = c.ui.accent

c.ui.prompt = "#D8D6D5"

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

c.term.white = c.ui.text
c.term.bright_white = c.ui.text

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
