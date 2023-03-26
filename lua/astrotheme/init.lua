C = {}
local util = require "astrotheme.lib.util"

local M = { config = {} }

function M.load(theme)
  if not theme then
    theme = M.config.palette
  else
    M.config.palette = theme
  end
  util.reload(M.config, theme)

  C = util.set_palettes(M.config)

  local highlights = {}
  highlights = util.get_hl_modules(highlights, "astrotheme.groups", {
    "base",
    "syntax",
    "lsp",
    "astronvim",
  })

  highlights = util.get_hl_modules(highlights, "astrotheme.groups.plugins", M.config.plugins)

  util.set_highlights(M.config, highlights, theme)
  if M.config.terminal_colors then util.set_terminal_colors() end
end

function M.setup(opts)
  M.config = require("astrotheme.lib.config").user_config(opts)
  M.config.plugins = util.get_plugin_list(M.config)
end

return M
