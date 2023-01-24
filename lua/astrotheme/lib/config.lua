M = {}

M.default = {
  terminal_colors = true,
  background = "dark",

  palette = { astrodark = {} },
  highlights = { astrodark = {} },

  plugin_default = "auto",
  plugins = {},
}

function M.user_config(opts)
  return vim.tbl_deep_extend("force", M.default, opts or {})
end

return M
