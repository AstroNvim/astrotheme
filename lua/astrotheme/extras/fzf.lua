local M = {}

--- @param highlights table<string, vim.api.keyset.highlight>
function M.generate(_, highlights)
  local links = {
    FzfLuaFzfCursorLine = "CursorLine",
    FzfLuaFzfMatch = "Special",
    FzfLuaFzfBorder = "FzfLuaBorder",
    FzfLuaFzfScrollbar = "FzfLuaBorder",
    FzfLuaFzfSeparator = "FzfLuaBorder",
    FzfLuaFzfGutter = "FzfLuaNormal",
    FzfLuaFzfHeader = "FzfLuaTitle",
    FzfLuaFzfInfo = "NonText",
    FzfLuaFzfPointer = "Special",
    FzfLuaFzfMarker = "FzfLuaFzfPointer",
    FzfLuaFzfSpinner = "FzfLuaFzfPointer",
    FzfLuaFzfPrompt = "Special",
    FzfLuaFzfQuery = "FzfLuaNormal",
    FzfLuaNormal = "Normal",
  }

  local spec = {
    -- fg and bg are hard requirements
    ["fg"] = { "fg", "FzfLuaNormal" },
    ["bg"] = { "bg", "FzfLuaNormal" },
    ["hl"] = { "fg", "FzfLuaFzfMatch" },
    ["fg+"] = { "fg", "FzfLuaFzfCursorLine" },
    ["bg+"] = { "bg", "FzfLuaFzfCursorLine" },
    ["hl+"] = { "fg", "FzfLuaFzfMatch" },
    ["info"] = { "fg", "FzfLuaFzfInfo" },
    ["border"] = { "fg", "FzfLuaFzfBorder" },
    ["separator"] = { "fg", "FzfLuaFzfSeparator" },
    ["scrollbar"] = { "fg", "FzfLuaFzfScrollbar" },
    ["gutter"] = { "bg", "FzfLuaFzfGutter" },
    ["query"] = { "fg", "FzfLuaFzfQuery", "regular" },
    ["prompt"] = { "fg", "FzfLuaFzfPrompt" },
    ["pointer"] = { "fg", "FzfLuaFzfPointer" },
    ["marker"] = { "fg", "FzfLuaFzfMarker" },
    ["spinner"] = { "fg", "FzfLuaFzfSpinner" },
    ["header"] = { "fg", "FzfLuaFzfHeader" },
  }
  local ret = {}

  local resolve_color
  resolve_color = function(property, raw_hl_group)
    local hl_group = raw_hl_group
    while hl_group and not highlights[hl_group] do
      hl_group = links[hl_group]
    end
    assert(hl_group, "hl_group not found for " .. raw_hl_group)
    local hl = highlights[hl_group]
    while hl and (type(hl) == "string" or hl.link) do
      hl = highlights[type(hl) == "string" and hl or hl.link]
    end
    assert(hl, "hl not found for " .. hl_group)
    local color = hl[property] or "NONE"
    return color == "NONE" and resolve_color(unpack(spec[property])) or color
  end

  for c, v in pairs(spec) do
    local color = resolve_color(unpack(v))
    if type(color) == "number" then color = string.format("#%06x", color) end
    if color:lower() ~= "none" then
      local line = string.format("--color=%s:%s", c, color)
      if v[3] then line = line .. ":" .. v[3] end
      ret[#ret + 1] = "  " .. line .. " \\"
    end
  end
  table.sort(ret)
  return ([[
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
%s
"
]]):format(table.concat(ret, "\n"))
end

return M
