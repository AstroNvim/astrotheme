C = {}
local util = require "astrotheme.lib.util"

local M = { config = {} }

function M.load(theme)
  if
    theme
    and theme == M.config.palette
    and vim.o.background ~= (M.config.palette == M.config.background["light"] and "light" or "dark")
  then
    theme = M.config.background[vim.o.background]
  end
  M.config.palette = theme
  util.reload(M.config, theme)

  C = util.set_palettes(M.config)

  local highlights = {}
  highlights = util.get_hl_modules(highlights, "astrotheme.groups", {
    "base",
    "syntax",
    "lsp",
    "astronvim",
  }, M.config)

  highlights = util.get_hl_modules(highlights, "astrotheme.groups.plugins", M.config.plugins, M.config)

  util.set_highlights(M.config, highlights, theme)
  if M.config.terminal_colors then util.set_terminal_colors() end
end

function M.setup(opts)
  M.config = require("astrotheme.lib.config").user_config(opts)
  M.config.plugins = util.get_plugin_list(M.config)

  if M.config.dev then
    vim.api.nvim_create_augroup("ThemeUpdate", { clear = true })
    vim.api.nvim_create_autocmd("BufWritePost", {
      -- buffer = 0,
      pattern = "*.lua",
      group = "ThemeUpdate",
      callback = function()
        local theme = vim.g.colors_name
        if string.match(theme, "astro") then
          local command = ":colorscheme " .. theme
          vim.api.nvim_feedkeys(command, "t", true)
          vim.api.nvim_input "<CR>"
        end
      end,
    })
  end
end

return M
