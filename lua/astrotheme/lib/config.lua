M = {}

M.default = {
  palette = "astrodark",
  termguicolors = true,
  terminal_colors = true,
  background = "dark",
  palettes = {
    global = {},
    astrodark = {},
    astrolight = {},
  },
  highlights = {
    global = {},
    astrodark = {},
    astrolight = {},
  },
  plugin_default = "auto",
  plugins = {},
}

function M.user_config(opts) return vim.tbl_deep_extend("force", M.default, opts or {}) end

return M
