local M = {}

--- @param colors AstroThemePalette
--- @param highlights table<string, vim.api.keyset.highlight>
function M.generate(colors, highlights)
  colors = vim.deepcopy(colors)
  colors._upstream_url = nil
  colors._style_name = nil

  local ret = "local colors = "
    .. vim.inspect(colors)
    .. "\n\nlocal highlights = "
    .. vim.inspect(vim.deepcopy(highlights, true))
    .. "\n"
  return ret
end

return M
