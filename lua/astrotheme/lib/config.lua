M = {}

M.default = {
  palette = "astrodark",
  termguicolors = true,
  terminal_colors = true,
  dev = false,
  style = {
    transparent = false,
    inactive = true,
    float = true,
    neotree = true,
    border = true,
    title_invert = false,
    italic_comments = true,
    simple_syntax_colors = false,
  },
  background = {
    light = "astrolight",
    dark = "astrodark",
  },
  palettes = {
    global = {},
    astrodark = {},
    astrolight = {},
    astromars = {},
  },
  highlights = {
    global = {},
    astrodark = {},
    astrolight = {},
    astromars = {},
  },
  plugin_default = "auto",
  plugins = {},
}

function M.user_config(opts) return vim.tbl_deep_extend("force", M.default, opts or {}) end

return M
