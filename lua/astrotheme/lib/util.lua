local M = {}

function M.reload(opts, theme)
  if vim.g.colors_name then vim.cmd.highlight "clear" end
  if vim.fn.exists "syntax_on" then vim.cmd.syntax "reset" end
  vim.o.termguicolors = opts.termguicolors
  vim.g.colors_name = theme
end

function M.reload_module(module, bool)
  bool = bool or false
  if bool then package.loaded[module] = nil end
  return require(module)
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
  local global_hl = opts.highlights.global
  local theme_hl = opts.highlights[theme]

  pcall(global_hl.modify_hl_groups, highlights, C)
  pcall(theme_hl.modify_hl_groups, highlights, C)

  highlights = vim.tbl_deep_extend("force", highlights, global_hl, theme_hl)

  for name, value in pairs(highlights) do
    -- TODO: optimise in V3 by removing checks.
    if name ~= "modify_hl_groups" then vim.api.nvim_set_hl(0, name, value) end
  end
end

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

function M.set_terminal_colors()
  vim.g.terminal_color_0 = C.term.black
  vim.g.terminal_color_8 = C.term.bright_black

  vim.g.terminal_color_1 = C.term.red
  vim.g.terminal_color_9 = C.term.bright_red

  vim.g.terminal_color_2 = C.term.green
  vim.g.terminal_color_10 = C.term.bright_green

  vim.g.terminal_color_3 = C.term.yellow
  vim.g.terminal_color_11 = C.term.bright_yellow

  vim.g.terminal_color_4 = C.term.blue
  vim.g.terminal_color_12 = C.term.bright_blue

  vim.g.terminal_color_5 = C.term.purple
  vim.g.terminal_color_13 = C.term.bright_purple

  vim.g.terminal_color_6 = C.term.cyan
  vim.g.terminal_color_14 = C.term.bright_cyan

  vim.g.terminal_color_7 = C.term.white
  vim.g.terminal_color_15 = C.term.bright_white

  vim.g.terminal_color_background = C.term.background
  vim.g.terminal_color_foreground = C.term.foreground
end

return M
