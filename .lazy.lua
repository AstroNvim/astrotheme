--- Enable live highlighting by `mini.hipatterns`
--- Basically Copy/Paste (with some adjustments) from folke's tokyonight colorscheme:
--- https://github.com/folke/tokyonight.nvim/blob/c645c1fe778e1428143beca1908b54b78b0b5c1a/.lazy.lua

local util = require "astrotheme.lib.util"

local colors ---@type AstroThemePalette
local cache ---@type table<string,string>?
local hl_groups = {} ---@type { [string]: boolean }

---@param hl AstroThemeHighlight
local function get_hl_group(hl)
  local group = "AstroThemeDev" .. vim.inspect(hl):gsub("%W+", "_")
  if not hl_groups[group] then
    hl = vim.deepcopy(hl, true)
    if not hl.fg then hl.fg = colors.syntax.text end
    vim.api.nvim_set_hl(0, group, hl)
    hl_groups[group] = true
  end
  return group
end

local function load_highlights()
  if cache then return end
  cache = {}
  local opts = require("astrotheme").config
  colors = util.set_palettes(opts)
  local highlights = util.get_highlights(colors, opts)
  for k, v in pairs(highlights) do
    cache[k] = get_hl_group(v)
  end
end

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("astrotheme_dev", { clear = true }),
  pattern = "*/lua/astrotheme/**.lua",
  callback = vim.schedule_wrap(function()
    local opts = require("astrotheme").config
    for k in pairs(package.loaded) do
      if k:find "^astrotheme" then package.loaded[k] = nil end
    end
    require("astrotheme").setup(opts)
    if vim.g.colors_name then vim.cmd.colorscheme(vim.g.colors_name) end
    hl_groups, cache = {}, nil
    local hi = require "mini.hipatterns"
    vim.tbl_map(hi.update, hi.get_enabled_buffers())
  end),
})

return {
  "echasnovski/mini.hipatterns",
  lazy = false,
  opts = function(_, opts)
    opts.highlighters = opts.highlighters or {}
    opts.highlighters.astrotheme = {
      pattern = function(buf)
        local fname = vim.fs.normalize(vim.api.nvim_buf_get_name(buf or 0))
        if fname:find "lua/astrotheme/groups" and vim.fn.fnamemodify(fname, ":t:r") ~= "init" then
          load_highlights()
          return '^%s*%[?"?()[%w%.@]+()"?%]?%s*='
        end
      end,
      group = function(_, match)
        if cache then return cache[match] end
      end,
      extmark_opts = { priority = 2000 },
    }

    opts.highlighters.astrotheme_colors = {
      pattern = {
        "%f[%w]()c%.[%w_%.]+()%f[%W]",
        "%f[%w]()colors%.[%w_%.]+()%f[%W]",
        "%f[%w]()vim%.g%.terminal_color_%d+()%f[%W]",
      },
      group = function(_, match)
        local parts = vim.split(match, ".", { plain = true })
        local t = _G --[[@as table]]
        if parts[1]:sub(1, 1) == "c" then
          table.remove(parts, 1)
          if not colors then colors = util.set_palettes(require("astrotheme").config) end
          t = colors
        end
        local color = vim.tbl_get(t, unpack(parts))
        return type(color) == "string" and get_hl_group { fg = color }
      end,
      extmark_opts = function(_, _, data)
        return {
          virt_text = { { "⬤ ", data.hl_group } },
          virt_text_pos = "inline",
          priority = 2000,
        }
      end,
    }
  end,
}
