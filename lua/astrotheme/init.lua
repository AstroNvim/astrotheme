C = {}
local util = require("astrotheme.lib.util")
local config = require("astrotheme.config")

local M = {}

function M.load(theme)
  theme = theme or config.default.theme
  util.reload(config.options, theme)

  C = util.set_palettes(config.options, "astrotheme.colors")

  local highlights = {}
  highlights = util.get_hl_modules(highlights, "astrotheme.groups", {
    "base",
    "lsp",
  })

  local plugin_list = util.get_plugin_list(config.default)
  highlights = util.get_hl_modules(highlights, "astrotheme.groups.plugins", plugin_list)

  util.set_highlights(config.options, highlights)
  util.set_terminal_colors()
end

function M.setup(opts)
  opts = opts or {}
  opts = vim.tbl_deep_extend("force", config.default, opts)
  config.options = opts
  M.load()
end

return M
