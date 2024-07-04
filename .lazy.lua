--- Enable live highlighting by `mini.hipatterns`
--- Basically Copy/Paste (with some adjustments) from folke's tokyonight colorscheme:
--- https://github.com/folke/tokyonight.nvim/blob/c645c1fe778e1428143beca1908b54b78b0b5c1a/.lazy.lua

local M = {
  module = "astrotheme",
  colorscheme = "astrotheme",
  globals = { vim = vim },
  opts = { plugin_default = true },
  cache = {}, ---@type table<string, boolean>
}

function M.reset()
  local colors = require("astrotheme.lib.util").set_palettes(require("astrotheme").config)
  M.globals.colors, M.globals.c = colors, colors
end

local function is_dev()
  local plugin = require("lazy.core.config").spec.plugins["astrotheme"]
  return plugin and require("lazy.core.plugin").values(plugin, "dev")[1]
end

local augroup = vim.api.nvim_create_augroup("astrotheme_dev", { clear = true })

local reload = vim.schedule_wrap(function()
  if is_dev() then
    for k in pairs(package.loaded) do
      if k:find("^" .. M.module) then package.loaded[k] = nil end
    end
    require(M.module).setup(M.opts)
    M.cache = {}
    local colorscheme = vim.g.colors_name
    if not colorscheme:match "^astro" then colorscheme = M.colorscheme end
    vim.cmd.colorscheme(colorscheme)
    M.reset()
    local hi = require "mini.hipatterns"
    vim.tbl_map(hi.update, hi.get_enabled_buffers())
  else
    vim.api.nvim_del_augroup_by_id(augroup)
  end
end)

vim.api.nvim_create_autocmd("BufWritePost", { group = augroup, pattern = "*/lua/astrotheme/**.lua", callback = reload })
vim.api.nvim_create_autocmd("User", { group = augroup, pattern = "VeryLazy", callback = reload })

return {
  {
    "AstroNvim/astroui",
    optional = true,
    opts = function(_, opts)
      if is_dev() then opts.colorscheme = M.colorscheme end
    end,
  },
  {
    "echasnovski/mini.hipatterns",
    opts = function(_, opts)
      local hi = require "mini.hipatterns"

      opts.highlighters = opts.highlighters or {}

      opts.highlighters = vim.tbl_extend("keep", opts.highlighters or {}, {
        hex_color = hi.gen_highlighter.hex_color { priority = 2000 },

        hl_group = {
          pattern = function(buf)
            return vim.api.nvim_buf_get_name(buf):find("lua/" .. M.module) and '^%s*%[?"?()[%w%.@]+()"?%]?%s*='
          end,
          group = function(_, group)
            if M.cache[group] == nil then
              M.cache[group] = false
              local hl = vim.api.nvim_get_hl(0, { name = group, link = false, create = false })
              if not vim.tbl_isempty(hl) then
                hl.fg = hl.fg or vim.api.nvim_get_hl(0, { name = "Normal", link = false }).fg
                M.cache[group] = true
                vim.api.nvim_set_hl(0, group .. "Dev", hl)
              end
            end
            return M.cache[group] and group .. "Dev" or nil
          end,
          extmark_opts = { priority = 2000 },
        },

        hl_color = {
          pattern = {
            "%f[%w]()c%.[%w_%.]+()%f[%W]",
            "%f[%w]()colors%.[%w_%.]+()%f[%W]",
            "%f[%w]()vim%.g%.terminal_color_%d+()%f[%W]",
          },
          group = function(_, match)
            local parts = vim.split(match, ".", { plain = true })
            local color = vim.tbl_get(M.globals, unpack(parts))
            return type(color) == "string" and require("mini.hipatterns").compute_hex_color_group(color, "fg")
          end,
          extmark_opts = function(_, _, data)
            return {
              virt_text = { { "⬤ ", data.hl_group } },
              virt_text_pos = "inline",
              priority = 2000,
            }
          end,
        },
      })
    end,
  },
}
