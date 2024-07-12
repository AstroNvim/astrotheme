--- Automatically generate extras for theming other applications
--- Basically Copy/Paste (with some adjustments) from folke's tokyonight colorscheme:
--- https://github.com/folke/tokyonight.nvim/blob/66a272ba6cf93bf303c4b7a91b100ca0dd3ec7bd/lua/tokyonight/extra/init.lua

local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string, subdir?: string}>
-- stylua: ignore
M.extras = {
  -- Keep all entries here aligned by the first `=` sign
  alacritty        = { ext = "toml", url = "https://github.com/alacritty/alacritty", label = "Alacritty" },
  delta            = { ext = "gitconfig", url = "https://github.com/dandavison/delta", label = "Delta" },
  dunst            = { ext = "dunstrc", url = "https://dunst-project.org/", label = "Dunst" },
  fish             = { ext = "fish", url = "https://fishshell.com/docs/current/index.html", label = "Fish" },
  fish_themes      = { ext = "theme", url = "https://fishshell.com/docs/current/interactive.html#syntax-highlighting", label = "Fish Themes" },
  foot             = { ext = "ini", url = "https://codeberg.org/dnkl/foot", label = "Foot" },
  gitui            = { ext = "ron", url = "https://github.com/extrawurst/gitui", label = "GitUI" },
  helix            = { ext = "toml", url = "https://helix-editor.com/", label = "Helix" },
  iterm            = { ext = "itermcolors", url = "https://iterm2.com/", label = "iTerm" },
  kitty            = { ext = "conf", url = "https://sw.kovidgoyal.net/kitty/conf.html", label = "Kitty" },
  lazygit          = { ext = "yml", url = "https://github.com/jesseduffield/lazygit", label = "Lazygit" },
  lua              = { ext = "lua", url = "https://www.lua.org", label = "Lua Table for testing" },
  slack            = {ext = "txt", url = "https://slack.com", label = "Slack"},
  spotify_player   = {ext = "toml", url = "https://github.com/aome510/spotify-player", label = "Spotify Player"},
  terminator       = { ext = "conf", url = "https://gnome-terminator.readthedocs.io/en/latest/config.html", label = "Terminator" },
  tilix            = { ext = "json", url = "https://github.com/gnunn1/tilix", label = "Tilix" },
  vim              = { ext = "vim", url = "https://vimhelp.org/", label = "Vim", subdir = "colors"},
  wezterm          = { ext = "toml", url = "https://wezfurlong.org/wezterm/config/files.html", label = "WezTerm" },
  windows_terminal = { ext = "json", url = "https://aka.ms/terminal-documentation", label = "Windows Terminal" },
  xfceterm         = { ext = "theme", url = "https://docs.xfce.org/apps/terminal/advanced", label = "Xfce Terminal" },
  xresources       = { ext = "Xresources", url = "https://wiki.archlinux.org/title/X_resources", label = "Xresources" },
  zellij           = { ext = "kdl", url = "https://zellij.dev/", label = "Zellij" },
}

function M.setup()
  local util = require "astrotheme.lib.util"

  -- map of style to style name
  local palettes = {
    astrodark = "AstroDark",
    astrolight = "AstroLight",
    astromars = "AstroMars",
    astrojupiter = "AstroJupiter",
  }

  ---@type string[]
  local names = vim.tbl_keys(M.extras)
  table.sort(names)

  for _, extra in ipairs(names) do
    local info = M.extras[extra]
    local plugin = require("astrotheme.extras." .. extra)
    for palette, palette_name in pairs(palettes) do
      local config = require("astrotheme.lib.config").default
      config.palette, config.plugin_default = palette, true
      local colors = util.set_palettes(config)
      local highlights = util.get_highlights(colors, config)
      local fname = extra .. (info.subdir and "/" .. info.subdir or "") .. "/" .. palette .. "." .. info.ext
      colors["_upstream_url"] = "https://github.com/AstroNvim/astrotheme/raw/main/extras/" .. fname
      colors["_style_name"] = palette_name
      colors["_style"] = palette
      print("[write] " .. fname)
      M.write("extras/" .. fname, plugin.generate(colors, highlights, config))
    end
  end
end

--- Write contents to a file
---@param file string
---@param contents string
function M.write(file, contents)
  vim.fn.mkdir(vim.fn.fnamemodify(file, ":h"), "p")
  local fd = assert(io.open(file, "w+"))
  fd:write(contents)
  fd:close()
end

-- Simple string interpolation.
--
-- Example template: "${name} is ${value}"
--
---@param str string template string
---@param table table key value pairs to replace in the string
function M.template(str, table)
  return (
    str:gsub(
      "($%b{})",
      function(w) return vim.tbl_get(table, unpack(vim.split(w:sub(3, -2), ".", { plain = true }))) or w end
    )
  )
end

return M
