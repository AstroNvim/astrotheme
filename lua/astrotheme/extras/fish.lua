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
    # ${_style_name} Color Palette
    set -l foreground ${syntax.text}
    set -l selection ${ui.selection}
    set -l comment ${syntax.comment}
    set -l red ${syntax.red}
    set -l orange ${syntax.orange}
    set -l yellow ${syntax.yellow}
    set -l green ${syntax.green}
    set -l purple ${syntax.purple}
    set -l cyan ${syntax.cyan}
    set -l pink ${syntax.purple}

    # Syntax Highlighting Colors
    set -g fish_color_normal $foreground
    set -g fish_color_command $cyan
    set -g fish_color_keyword $pink
    set -g fish_color_quote $yellow
    set -g fish_color_redirection $foreground
    set -g fish_color_end $orange
    set -g fish_color_error $red
    set -g fish_color_param $purple
    set -g fish_color_comment $comment
    set -g fish_color_selection --background=$selection
    set -g fish_color_search_match --background=$selection
    set -g fish_color_operator $green
    set -g fish_color_escape $pink
    set -g fish_color_autosuggestion $comment

    # Completion Pager Colors
    set -g fish_pager_color_progress $comment
    set -g fish_pager_color_prefix $cyan
    set -g fish_pager_color_completion $foreground
    set -g fish_pager_color_description $comment
    set -g fish_pager_color_selected_background --background=$selection
]],
    normalize_colors(colors)
  )
end

return M
