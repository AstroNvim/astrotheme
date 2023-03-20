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
    "filetypes.typescript",
    "astronvim",
  })

  highlights = util.get_hl_modules(highlights, "astrotheme.groups.plugins", config.plugins)

  util.set_highlights(config, highlights, theme)
  if config.terminal_colors then util.set_terminal_colors() end

  for _, source in ipairs {
    "astrotheme.autocmds",
  } do
    local status_ok, fault = pcall(require, source)
    if not status_ok then
      vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault)
      return
    end
  end
end

function M.setup(opts)
  config = require("astrotheme.lib.config").user_config(opts)
  config.plugins = util.get_plugin_list(config)
end

return M
