---AstroTheme Utilities
---
---Various utilities for use within AstroTheme
---
---This module can be loaded with `local astrotheme_utils = require "astrotheme.lib.util"`
---
---copyright 2023 license GNU General Public License v3.0 @class astrocore
---@class astrotheme.lib.util
local M = {}

--- Reload a given theme
---@param opts AstroThemeOpts
---@param theme string
function M.reload(opts, theme)
  if vim.g.colors_name then vim.cmd.highlight "clear" end
  if vim.fn.exists "syntax_on" then vim.cmd.syntax "reset" end
  vim.o.termguicolors = opts.termguicolors
  vim.g.colors_name = theme
end

--- Reload a module
---@param module string
---@param bool boolean
---@return any
function M.reload_module(module, bool)
  bool = bool or false
  if bool then package.loaded[module] = nil end
  return require(module)
end

--- Retrieve a list of all plugins to enable
---@param opts AstroThemeOpts
---@return string[]
function M.get_plugin_list(opts)
  local lazy_avail, lazy_config = pcall(require, "lazy.core.config")
  local installed_plugins = lazy_avail and lazy_config.plugins or packer_plugins

  local plugins = {}

  for plugin, module in pairs(require "astrotheme.groups.plugins") do
    ---@type "auto"|boolean
    local load = opts.plugins[plugin]
    if load == nil then load = opts.plugin_default end
    if load == "auto" then
      if installed_plugins then
        load = installed_plugins[plugin] ~= nil
      else
        load = true
      end
    end

    if load then table.insert(plugins, module) end
  end

  return plugins
end

--- Compile highlights from a module
---@param colors AstroThemePalette
---@param opts AstroThemeOpts
---@param module string
---@return AstroThemeHighlights?
function M.get_module_highlights(colors, opts, module)
  if opts.dev then package.loaded[module] = nil end
  local file_avail, file = pcall(require, module)
  if type(file) == "function" then file = file(colors, opts.style) end
  if file_avail then
    return file --[[@as AstroThemeHighlights]]
  end
end

--- Compile all highlights given a configuration
---@param colors AstroThemePalette
---@param opts AstroThemeOpts
---@return AstroThemeHighlights
function M.get_highlights(colors, opts)
  local highlights = {}
  for _, base in ipairs {
    "base",
    "syntax",
    "lsp",
    "treesitter",
    "astronvim",
  } do
    local module_highlights = M.get_module_highlights(colors, opts, "astrotheme.groups." .. base)
    if module_highlights then highlights = vim.tbl_deep_extend("force", module_highlights, highlights) end
  end
  for _, base in ipairs(opts.plugins) do
    local module_highlights = M.get_module_highlights(colors, opts, "astrotheme.groups.plugins." .. base)
    if module_highlights then highlights = vim.tbl_deep_extend("force", module_highlights, highlights) end
  end

  local global_hl = opts.highlights.global
  local theme_hl = opts.highlights[opts.palette]

  pcall(global_hl.modify_hl_groups, highlights, colors)
  pcall(theme_hl.modify_hl_groups, highlights, colors)

  highlights = vim.tbl_deep_extend("force", highlights, global_hl, theme_hl)
  return highlights
end

--- Set a palette given a AstroTheme options
---@param opts AstroThemeOpts
---@return AstroThemePalette
function M.set_palettes(opts)
  local palette_name = "astrotheme.palettes." .. opts.palette
  if opts.dev then package.loaded[palette_name] = nil end
  local palette = require(palette_name)
  palette = vim.tbl_deep_extend("force", palette, opts.palettes.global)
  palette = vim.tbl_deep_extend("force", palette, opts.palettes[opts.palette])
  ---@cast palette AstroThemePalette
  return palette
end

--- Set highlights in Neovim
---@param highlights AstroThemeHighlights
function M.set_highlights(highlights)
  for name, value in pairs(highlights) do
    -- TODO: optimise in V3 by removing checks.
    if name ~= "modify_hl_groups" then vim.api.nvim_set_hl(0, name, value) end
  end
end

--- Enable live reloading of AstroTheme for development
---@param opts AstroThemeOpts
function M.live_reloading(opts)
  if opts.dev then
    vim.api.nvim_create_augroup("AstroTheme", { clear = true })
    vim.api.nvim_create_autocmd("BufWritePost", {
      -- buffer = 0,
      pattern = "*.lua",
      group = "AstroTheme",
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

--- Set terminal colors based on the currently loaded colors
function M.set_terminal_colors(colors)
  vim.g.terminal_color_0 = colors.term.black
  vim.g.terminal_color_8 = colors.term.bright_black

  vim.g.terminal_color_1 = colors.term.red
  vim.g.terminal_color_9 = colors.term.bright_red

  vim.g.terminal_color_2 = colors.term.green
  vim.g.terminal_color_10 = colors.term.bright_green

  vim.g.terminal_color_3 = colors.term.yellow
  vim.g.terminal_color_11 = colors.term.bright_yellow

  vim.g.terminal_color_4 = colors.term.blue
  vim.g.terminal_color_12 = colors.term.bright_blue

  vim.g.terminal_color_5 = colors.term.purple
  vim.g.terminal_color_13 = colors.term.bright_purple

  vim.g.terminal_color_6 = colors.term.cyan
  vim.g.terminal_color_14 = colors.term.bright_cyan

  vim.g.terminal_color_7 = colors.term.white
  vim.g.terminal_color_15 = colors.term.bright_white

  vim.g.terminal_color_background = colors.term.background
  vim.g.terminal_color_foreground = colors.term.foreground
end

return M
