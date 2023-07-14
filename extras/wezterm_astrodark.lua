local M = {}

local c = {
  none = "NONE",
  syntax = {},
  ui = {},
  term = {},
}

--------------------------------
--- Syntax
--------------------------------
c.syntax.red = "#FE8A90"
c.syntax.blue = "#63B7FC"
c.syntax.green = "#89BF63"
c.syntax.yellow = "#E1AA41"
c.syntax.purple = "#DB98EE"
c.syntax.cyan = "#1BC5B9"
c.syntax.orange = "#FE915E"
c.syntax.text = "#ADB0BB"
c.syntax.comment = "#696C76"
c.syntax.mute = "#595C66"

--------------------------------
--- UI
--------------------------------
c.ui.red = "#F37880"
c.ui.blue = "#50A4E9"
c.ui.green = "#75AD47"
c.ui.yellow = "#D09214"
c.ui.purple = "#CC83E3"
c.ui.cyan = "#00B298"
c.ui.orange = "#EB8331"

c.ui.accent = "#EB8331"

c.ui.tabline = "#111317"
c.ui.winbar = "#797D87"
c.ui.tool = "#16181D"
c.ui.base = "#1A1D23"
c.ui.inactive_base = "#16181D"
c.ui.statusline = "#111317"
c.ui.split = "#111317"
c.ui.popup = "#16181D"
c.ui.float = "#16181D"
c.ui.title = c.ui.accent
c.ui.border = "#7A7C7E"
c.ui.current_line = "#1E222A"
c.ui.scrollbar = c.ui.accent
c.ui.selection = "#26343F"
c.ui.menu_selection = c.ui.accent
c.ui.highlight = "#1E222A"
c.ui.none_text = "#3A3E47"
c.ui.text = "#9B9FA9"
c.ui.text_active = "#ADB0BB"
c.ui.text_inactive = "#494D56"
c.ui.text_match = c.ui.accent

--------------------------------
--- Terminal
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

c.term.white = c.syntax.text
c.term.bright_white = c.syntax.text

c.term.background = c.ui.base
c.term.foreground = c.ui.text

--------------------------------
--- Wezterm
--------------------------------

local active_tab = {
  bg_color = c.ui.base,
  fg_color = c.ui.text_active,
}

local inactive_tab = {
  bg_color = c.ui.tabline,
  fg_color = c.ui.text_inactive,
}

function M.colors()
  return {
    foreground = c.ui.text,
    background = c.term.background,
    cursor_bg = c.ui.text,
    cursor_border = c.ui.text,
    cursor_fg = c.ui.black,
    selection_bg = c.ui.selection,
    selection_fg = c.ui.text_active,
    scrollbar_thumb = c.ui.winbar,

    ansi = {
      c.term.black,
      c.term.red,
      c.term.green,
      c.term.yellow,
      c.term.blue,
      c.term.purple,
      c.term.cyan,
      c.term.white,
    },

    brights = {
      c.term.bright_black,
      c.term.bright_red,
      c.term.bright_green,
      c.term.bright_yellow,
      c.term.bright_blue,
      c.term.bright_purple,
      c.term.bright_cyan,
      c.term.bright_white,
    },

    tab_bar = {
      background = c.ui.tabline,
      active_tab = active_tab,
      inactive_tab = inactive_tab,
      inactive_tab_hover = active_tab,
      new_tab = inactive_tab,
      new_tab_hover = active_tab,
      inactive_tab_edge = c.ui.none_text,
    },
  }
end

function M.window_frame() -- (Fancy tab bar only)
  return {
    active_titlebar_bg = active_tab.bg_color,
    inactive_titlebar_bg = inactive_tab.bg_color,
  }
end

return M
