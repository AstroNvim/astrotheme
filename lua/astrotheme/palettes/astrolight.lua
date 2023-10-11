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

c.syntax.comment = "#A9A5A5"
c.syntax.text = "#635F5F"

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

c.ui.accent = "#B89A9A"

c.ui.tabline = "#D7D3D3"
c.ui.winbar = "#D2CECE"
c.ui.tool = "#F4F0F0"
c.ui.base = "#FFFBFB"
c.ui.inactive_base = "#F4F0F0"
c.ui.statusline = "#D7D3D3"
c.ui.split = "#E9E5E5"
c.ui.float = "#E9E5E5"
c.ui.title = c.ui.accent
c.ui.border = c.ui.accent
c.ui.current_line = "#F3EFEF"
c.ui.scrollbar = c.ui.accent
c.ui.selection = "#BBC9D7"
c.ui.menu_selection = c.ui.accent
c.ui.highlight = "#C4C0C0"
c.ui.none_text = "#D2CECE"
c.ui.text = "#7C7878"
c.ui.text_active = "#C9C5C5"
c.ui.text_inactive = "#DDD9D9"
c.ui.text_match = "#222222"

c.ui.prompt = "#D0CECD"

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
