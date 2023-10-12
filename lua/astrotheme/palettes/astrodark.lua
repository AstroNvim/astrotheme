local c = {
  none = "NONE",
  syntax = {},
  ui = {},
  term = {},
}

--------------------------------
--- Syntax
--------------------------------
c.syntax.red = "#FF838B"
c.syntax.orange = "#F5983A"
c.syntax.yellow = "#DFAB25"
c.syntax.green = "#87C05F"
c.syntax.cyan = "#4AC2B8"
c.syntax.blue = "#5EB7FF"
c.syntax.purple = "#DD97F1"
c.syntax.text = "#ADB0BB"
c.syntax.comment = "#696C76"
c.syntax.mute = "#595C66"

--------------------------------
--- UI
--------------------------------
c.ui.red = "#F8747E"
c.ui.orange = "#EB8332"
c.ui.yellow = "#D09214"
c.ui.green = "#75AD47"
c.ui.cyan = "#00B298"
c.ui.blue = "#50A4E9"
c.ui.purple = "#CC83E3"

c.ui.accent = "#50A4E9"

c.ui.tabline = "#111317"
c.ui.winbar = "#797D87"
c.ui.tool = "#16181D"
c.ui.base = "#1A1D23"
c.ui.inactive_base = "#16181D"
c.ui.statusline = "#111317"
c.ui.split = "#111317"
c.ui.float = "#14161B"
c.ui.title = c.ui.accent
c.ui.border = "#3A3E47"
c.ui.current_line = "#1E222A"
c.ui.scrollbar = c.ui.accent
c.ui.selection = "#26343F"
-- TODO: combine menu_selection and selection
c.ui.menu_selection = c.ui.selection
c.ui.highlight = "#23272F"
c.ui.none_text = "#3A3E47"
c.ui.text = "#9B9FA9"
c.ui.text_active = "#ADB0BB"
c.ui.text_inactive = "#494D56"
c.ui.text_match = "#E0E0Ee"

c.ui.prompt = "#21242A"

--------------------------------
--- terminal
--------------------------------
c.term.black = c.ui.tabline
c.term.bright_black = c.ui.tabline

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
c.term.bright_white = c.ui.text_active

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
