C = {}
local config = {}
local util = require "astrotheme.lib.util"

local M = {}

function M.load(theme)
  if not theme then theme = config.palette end
  util.reload(config, theme)

  C = util.set_palettes(config, theme)

  local highlights = {}
  highlights = util.get_hl_modules(highlights, "astrotheme.groups", {
    "base",
    "syntax",
    "lsp",
    "astronvim",
  })

  highlights = util.get_hl_modules(highlights, "astrotheme.groups.plugins", config.plugins)

  util.set_highlights(config, highlights, theme)
  if config.terminal_colors then util.set_terminal_colors() end
end

function M.setup(opts)
  config = require("astrotheme.lib.config").user_config(opts)
  config.plugins = util.get_plugin_list(config)
end

return M
