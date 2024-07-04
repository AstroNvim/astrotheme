local color = require "astrotheme.lib.color"

---@class AstroThemePalette
local c = {
  none = "NONE",
  syntax = {},
  ui = {},
  term = {},
  icon = {},
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
c.icon.c = "#519aba"
c.icon.css = "#61afef"
c.icon.deb = "#a1b7ee"
c.icon.docker = "#384d54"
c.icon.html = "#de8c92"
c.icon.jpeg = "#c882e7"
c.icon.jpg = "#c882e7"
c.icon.js = "#ebcb8b"
c.icon.jsx = "#519ab8"
c.icon.kt = "#7bc99c"
c.icon.lock = "#c4c720"
c.icon.lua = "#51a0cf"
c.icon.mp3 = "#d39ede"
c.icon.mp4 = "#9ea3de"
c.icon.out = "#abb2bf"
c.icon.png = "#c882e7"
c.icon.py = "#a3b8ef"
c.icon.rb = "#ff75a0"
c.icon.robots = "#abb2bf"
c.icon.rpm = "#fca2aa"
c.icon.rs = "#dea584"
c.icon.toml = "#39bf39"
c.icon.ts = "#519aba"
c.icon.ttf = "#abb2bf"
c.icon.vue = "#7bc99c"
c.icon.woff = "#abb2bf"
c.icon.woff2 = "#abb2bf"
c.icon.zip = "#f9d71c"
c.icon.md = "#519aba"
c.icon.pkg = "#d39ede"

return c
