local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
(
  selected_tab: Some("${syntax.purple}"),
  command_fg: Some("${syntax.comment}"),
  selection_bg: Some("${ui.selection}"),
  selection_fg: Some("${syntax.cyan}"),
  cmdbar_bg: Some("${ui.base}"),
  cmdbar_extra_lines_bg: Some("${ui.base}"),
  disabled_fg: Some("${syntax.comment}"),
  diff_line_add: Some("${syntax.green}"),
  diff_line_delete: Some("${syntax.red}"),
  diff_file_added: Some("${ui.green}"),
  diff_file_removed: Some("${ui.red}"),
  diff_file_moved: Some("${ui.purple}"),
  diff_file_modified: Some("${ui.yellow}"),
  commit_hash: Some("${syntax.purple}"),
  commit_time: Some("${syntax.cyan}"),
  commit_author: Some("${syntax.green}"),
  danger_fg: Some("${ui.red}"),
  push_gauge_bg: Some("${ui.base}"),
  push_gauge_fg: Some("${syntax.text}"),
  tag_fg: Some("${ui.purple}"),
  branch_fg: Some("${ui.yellow}")
)
]],
    colors
  )
end

return M
