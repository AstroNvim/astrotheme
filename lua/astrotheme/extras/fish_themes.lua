local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  local function normalize_colors(_colors)
    local new_colors = {}
    for k, v in pairs(_colors) do
      new_colors[k] = type(v) == "string" and v:gsub("^#", "") or normalize_colors(v)
    end
    return new_colors
  end
  return util.template(
    [[
    # ${_style_name}

    # Syntax Highlighting Colors
    fish_color_normal ${syntax.text}
    fish_color_command ${syntax.cyan}
    fish_color_keyword ${syntax.purple}
    fish_color_quote ${syntax.yellow}
    fish_color_redirection ${syntax.text}
    fish_color_end ${syntax.orange}
    fish_color_error ${syntax.red}
    fish_color_param ${syntax.purple}
    fish_color_comment ${syntax.comment}
    fish_color_selection --background=${ui.selection}
    fish_color_search_match --background=${ui.selection}
    fish_color_operator ${syntax.green}
    fish_color_escape ${syntax.purple}
    fish_color_autosuggestion ${syntax.comment}

    # Completion Pager Colors
    fish_pager_color_progress ${syntax.comment}
    fish_pager_color_prefix ${syntax.cyan}
    fish_pager_color_completion ${syntax.text}
    fish_pager_color_description ${syntax.comment}
    fish_pager_color_selected_background --background=${ui.selection}
]],
    normalize_colors(colors)
  )
end

return M
