C = {}
local config = {}
local util = require "astrotheme.lib.util"

local M = {}

function M.load(theme)
  util.reload(config.options, theme)

  C = util.set_palettes(config.options, "astrotheme.colors")

  local highlights = {}
  highlights = util.get_hl_modules(highlights, "astrotheme.groups", {
    "base",
    "lsp",
    "astronvim",
  })

  highlights = util.get_hl_modules(highlights, "astrotheme.groups.plugins", config.options.plugins)

  util.set_highlights(config.options, highlights)
  util.set_terminal_colors()
end

function M.setup(opts)
  opts = require("astrotheme.lib.config").user_config(opts)
  opts.plugins = util.get_plugin_list(opts)
  config.options = opts
end

return M
