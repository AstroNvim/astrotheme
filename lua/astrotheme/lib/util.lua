local M = {}

function M.reload(opts, theme)
  if vim.g.colors_name then vim.cmd.highlight "clear" end
  if vim.fn.exists "syntax_on" then vim.cmd.syntax "reset" end
  vim.o.termguicolors = opts.termguicolors
  vim.g.colors_name = theme
end

function M.get_plugin_list(opts)
  local lazy_avail, lazy_config = pcall(require, "lazy.core.config")
  local installed_plugins = lazy_avail and lazy_config.plugins or packer_plugins

  local plugins = {}

  for plugin, module in pairs(require "astrotheme.groups.plugins") do
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

function M.get_hl_modules(highlights, path, modules, opts)
  for _, module in ipairs(modules) do
    if opts.dev then package.loaded[path .. "." .. module] = nil end
    local file_avail, file = pcall(require, path .. "." .. module)
    if type(file) == "function" then file = file(opts.style) end
    if file_avail then highlights = vim.tbl_deep_extend("force", file, highlights) end
  end
  return highlights
end

function M.set_palettes(opts)
  local palette_name = "astrotheme.palettes." .. opts.palette
  if opts.dev then package.loaded[palette_name] = nil end
  local palette = require(palette_name)
  palette = vim.tbl_deep_extend("force", palette, opts.palettes.global)
  return vim.tbl_deep_extend("force", palette, opts.palettes[opts.palette])
end

function M.set_highlights(opts, highlights, theme)
  local opts_hl_glob = opts.highlights.global
  if opts_hl_glob.modify_hl_groups then
    opts_hl_glob.modify_hl_groups(highlights, C)
    opts_hl_glob.modify_hl_groups = nil
  end

  highlights = vim.tbl_deep_extend("force", highlights, opts_hl_glob)

  local opts_hl = opts.highlights[theme]
  if opts_hl.modify_hl_groups then
    opts_hl.modify_hl_groups(highlights, C)
    opts_hl.modify_hl_groups = nil
  end

  highlights = vim.tbl_deep_extend("force", highlights, opts_hl)
  for group, spec in pairs(highlights) do
    for key, value in pairs(spec) do
      if type(value) == table then spec[key] = value:toHex() end
    end
    vim.api.nvim_set_hl(0, group, spec)
  end
end

function M.set_terminal_colors()
  vim.g.terminal_color_0 = C.base
  vim.g.terminal_color_1 = C.red
  vim.g.terminal_color_2 = C.alt_green
  vim.g.terminal_color_3 = C.alt_yellow
  vim.g.terminal_color_4 = C.blue
  vim.g.terminal_color_5 = C.purple
  vim.g.terminal_color_6 = C.cyan
  vim.g.terminal_color_7 = C.surface2
  vim.g.terminal_color_8 = C.surface1
  vim.g.terminal_color_9 = C.alt_red
  vim.g.terminal_color_10 = C.green
  vim.g.terminal_color_11 = C.yellow
  vim.g.terminal_color_12 = C.alt_blue
  vim.g.terminal_color_13 = C.alt_purple
  vim.g.terminal_color_14 = C.alt_cyan
  vim.g.terminal_color_15 = C.text
  vim.g.terminal_color_background = C.base
  vim.g.terminal_color_foreground = C.text
end

return M
