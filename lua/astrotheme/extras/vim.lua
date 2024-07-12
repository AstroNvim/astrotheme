local M = {}

local mapping = {
  fg = "guifg",
  bg = "guibg",
  sp = "guisp",
}

--- @param colors AstroThemePalette
--- @param highlights table<string, vim.api.keyset.highlight>
--- @param opts AstroThemeOpts
function M.generate(colors, highlights, opts)
  opts.plugin_default = false
  for p, n in pairs(require "astrotheme.groups.plugins") do
    if not p:find "nvim" then opts.plugins[n] = true end
  end
  highlights = require("astrotheme.lib.util").get_highlights(colors, opts)
  local lines = {
    ([[
let g:colors_name = "%s"
hi clear
  ]]):format(colors._style),
  }

  highlights = vim.deepcopy(highlights)
  for name in pairs(highlights) do
    if name:sub(1, 1) == "@" then highlights[name] = nil end
  end
  local names = vim.tbl_keys(highlights)
  table.sort(names)

  local used = {}
  for _, name in ipairs(names) do
    local hl = highlights[name]
    if type(hl) == "string" then hl = { link = hl } end

    if not hl.link then
      local props = {}

      -- fg/bg/sp
      for k, v in pairs(hl) do
        if mapping[k] then props[#props + 1] = ("%s=%s"):format(mapping[k], v) end
      end

      -- gui
      local gui = {}
      for _, attr in ipairs {
        "bold",
        "underline",
        "undercurl",
        "italic",
        "strikethrough",
        "underdouble",
        "underdotted",
        "underdashed",
        "inverse",
        "standout",
        "nocombine",
        "altfont",
      } do
        if hl[attr] then gui[#gui + 1] = attr end
      end
      if #gui > 0 then props[#props + 1] = ("gui=%s"):format(table.concat(gui, ",")) end

      if #props > 0 then
        if not hl.bg then props[#props + 1] = "guibg=NONE" end
        table.sort(props)
        used[name] = true
        lines[#lines + 1] = ("hi %s %s"):format(name, table.concat(props, " "))
      else
        print("astrotheme: invalid highlight group: " .. name)
      end
    end
  end

  for _, name in ipairs(names) do
    local hl = highlights[name]
    if type(hl) == "string" then hl = { link = hl } end

    if hl.link then
      if hl.link:sub(1, 1) ~= "@" and highlights[hl.link] and used[hl.link] then
        lines[#lines + 1] = ("hi! link %s %s"):format(name, hl.link)
      end
    end
  end

  return table.concat(lines, "\n")
end

return M
