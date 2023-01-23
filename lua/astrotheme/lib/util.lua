local M = {}

function M.reload(opts, theme)
  if vim.g.colors_name then
    vim.cmd.highlight "clear"
  end
  if vim.fn.exists "syntax_on" then
    vim.cmd.syntax "reset"
  end
  vim.o.termguicolors = opts.termiguicolors
  vim.g.colors_name = theme or "astro-night"
end

function M.get_plugin_list(opts)
  local lazy_avail, lazy_config = pcall(require, "lazy.core.config")
  local installed_plugins = lazy_avail and lazy_config.plugins or packer_plugins

  local plugins = {}

  if installed_plugins then
    for plugin, value in pairs(installed_plugins) do
      table.insert(plugins, plugin)
    end
  else
    for plugin, value in pairs(opts.plugins) do
      if value then
        table.insert(plugins, plugin)
      end
    end
  end
  return plugins
end

function M.get_hl_modules(highlights, path, modules)
  for _, module in ipairs(modules) do
    local file_avail, file = pcall(require, path .. "." .. module)
    if file_avail then
      highlights = vim.tbl_deep_extend("force", file, highlights)
    end
  end
  return highlights
end

function M.get_palettes(opts, palettes)
  vim.tbl_deep_extend("force", palettes, opts.palettes)
end

function M.set_highlights(opts, highlights)
  highlights = vim.tbl_deep_extend("force", highlights, opts.highlights)
  for group, spec in pairs(highlights) do
    for key, value in pairs(spec) do
      if type(value) == table then
        spec[key] = value:toHex()
      end
    end
    vim.api.nvim_set_hl(0, group, spec)
  end
end

function M.set_terminal_colors()
  vim.g.terminal_color_0 = C.bg
  vim.g.terminal_color_1 = C.red
  vim.g.terminal_color_2 = C.green_1
  vim.g.terminal_color_3 = C.yellow_1
  vim.g.terminal_color_4 = C.blue
  vim.g.terminal_color_5 = C.purple_1
  vim.g.terminal_color_6 = C.cyan
  vim.g.terminal_color_7 = C.white
  vim.g.terminal_color_8 = C.white_1
  vim.g.terminal_color_9 = C.red_5
  vim.g.terminal_color_10 = C.green
  vim.g.terminal_color_11 = C.yellow
  vim.g.terminal_color_12 = C.blue_4
  vim.g.terminal_color_13 = C.purple_2
  vim.g.terminal_color_14 = C.cyan_1
  vim.g.terminal_color_15 = C.fg
  vim.g.terminal_color_background = C.bg
  vim.g.terminal_color_foreground = C.fg
end

return M
