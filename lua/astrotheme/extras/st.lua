local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
    /* 8 normal colors */
    "${term.black}",
    "${term.red}",
    "${term.green}",
    "${term.yellow}",
    "${term.blue}",
    "${term.purple}",
    "${term.cyan}",
    "${term.white}",

    /* 8 bright colors */
    "${term.bright_black}",
    "${term.bright_red}",
    "${term.bright_green}",
    "${term.bright_yellow}",
    "${term.bright_blue}",
    "${term.bright_purple}",
    "${term.bright_cyan}",
    "${term.bright_white}",

    [256] = "${syntax.text}",
    [257] = "${ui.selection}",
    [258] = "${syntax.text}", /* default foreground colour */
    [259] = "${ui.base}", /* default background colour */
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 258;
unsigned int defaultbg = 259;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;
]],
    colors
  )
end

return M
