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
function M.reload(opts)
  if vim.g.colors_name then vim.cmd.highlight "clear" end
  if vim.fn.exists "syntax_on" then vim.cmd.syntax "reset" end
  vim.o.termguicolors = opts.termguicolors
  vim.g.colors_name = opts.palette
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
  for _, plugin in ipairs(M.get_plugin_list(opts)) do
    local module_highlights = M.get_module_highlights(colors, opts, "astrotheme.groups.plugins." .. plugin)
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
  local palette = require(palette_name)
  palette = vim.tbl_deep_extend("force", palette, opts.palettes.global)
  palette = vim.tbl_deep_extend("force", palette, opts.palettes[opts.palette])
  ---@cast palette AstroThemePalette
  return palette
end

--- Set highlights in Neovim
---@param highlights AstroThemeHighlights
function M.set_highlights(highlights)
  for name, hl in pairs(highlights) do
    -- TODO: optimise in V3 by removing checks.
    if name ~= "modify_hl_groups" then
      if type(hl) == "string" then hl = { link = hl } end
      vim.api.nvim_set_hl(0, name, hl)
    end
  end
end

--- Set terminal colors based on the currently loaded colors
---@param c AstroThemePalette
function M.set_terminal_colors(c)
  vim.g.terminal_color_0 = c.term.black
  vim.g.terminal_color_8 = c.term.bright_black

  vim.g.terminal_color_1 = c.term.red
  vim.g.terminal_color_9 = c.term.bright_red

  vim.g.terminal_color_2 = c.term.green
  vim.g.terminal_color_10 = c.term.bright_green

  vim.g.terminal_color_3 = c.term.yellow
  vim.g.terminal_color_11 = c.term.bright_yellow

  vim.g.terminal_color_4 = c.term.blue
  vim.g.terminal_color_12 = c.term.bright_blue

  vim.g.terminal_color_5 = c.term.purple
  vim.g.terminal_color_13 = c.term.bright_purple

  vim.g.terminal_color_6 = c.term.cyan
  vim.g.terminal_color_14 = c.term.bright_cyan

  vim.g.terminal_color_7 = c.term.white
  vim.g.terminal_color_15 = c.term.bright_white

  vim.g.terminal_color_background = c.term.background
  vim.g.terminal_color_foreground = c.term.foreground
end

return M
