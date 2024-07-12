local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
[colors]
foreground = "${syntax.text}"
background = "${ui.base}"
cursor_bg = "${syntax.text}"
cursor_border = "${syntax.text}"
cursor_fg = "${ui.base}"
selection_bg = "${ui.selection}"
selection_fg = "${syntax.text}"
split = "${ui.blue}"
compose_cursor = "${ui.orange}"
scrollbar_thumb = "${syntax.comment}"

ansi = ["${term.black}", "${term.red}", "${term.green}", "${term.yellow}", "${term.blue}", "${term.purple}", "${term.cyan}", "${term.white}"]
brights = ["${term.bright_black}", "${term.bright_red}", "${term.bright_green}", "${term.bright_yellow}", "${term.bright_blue}", "${term.bright_purple}", "${term.bright_cyan}", "${term.bright_white}"]

[colors.tab_bar]
inactive_tab_edge = "${ui.border}"
background = "${ui.base}"

[colors.tab_bar.active_tab]
fg_color = "${ui.text_active}"
bg_color = "${ui.accent}"

[colors.tab_bar.inactive_tab]
fg_color = "${ui.text_inactive}"
bg_color = "${ui.inactive_base}"

[colors.tab_bar.inactive_tab_hover]
fg_color = "${ui.accent}"
bg_color = "${ui.inactive_base}"
# intensity = "Bold"

[colors.tab_bar.new_tab_hover]
fg_color = "${ui.accent}"
bg_color = "${ui.base}"

[colors.tab_bar.new_tab]
fg_color = "${ui.accent}"
bg_color = "${ui.base}"

[metadata]
aliases = []
author = "AstroNvim"
name = "${_name}"]],
    colors
  )
end

return M
