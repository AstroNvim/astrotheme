local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
# vim: ft=dosini
#
# aerc ${_style_name} styleset
# set styleset-name=${_style}.ini in 'aerc.conf' to load the style
#

*.default=true
*.normal=true

border.fg=${ui.border}
border.bg=${ui.base}

title.fg=${ui.base}
title.bg=${ui.title}
title.bold=true

header.fg=${ui.blue}
#header.bg=${ui.base}
header.bold=true

tab.fg=${ui.text_inactive}
tab.bg=${ui.tabline}
tab.selected.fg=${ui.text_active}
tab.selected.bg=${ui.base}

statusline_default.fg=${ui.text}
statusline_default.bg=${ui.statusline}
statusline_error.fg=${ui.red}
statusline_success.fg=${ui.green}

*error.bold=true
*error.fg=${ui.red}
*warning.fg=${ui.yellow}
*success.fg=${ui.green}

dirlist_*.bg=${ui.base}
dirlist_*.fg=${ui.text}
dirlist_*.selected.bg=${ui.selection}
dirlist_*.selected.fg=${ui.text}

msglist_*.bg=${ui.base}
msglist_*.fg=${ui.text}
msglist_*.selected.bg=${ui.selection}
#msglist_*.selected.fg=${ui.text}
msglist_unread.bold=true
msglist_unread.fg=${ui.accent}
msglist_marked.fg=${ui.orange}
msglist_thread_folded.italic=true
msglist_thread_folded.underline=true
msglist_gutter.bg=${ui.highlight}
msglist_pill.bg=${ui.winbar}
msglist_pill.reverse=false

part_*.fg=${ui.text}
part_*.bg=${ui.inactive_base}
part_*.selected.fg=${ui.text}
part_*.selected.bg=${ui.selection}

completion_default.bg=${ui.float}
completion_default.fg=${ui.text}
completion_default.selected.bg=${ui.menu_selection}
completion_default.selected.fg=${ui.text}
completion_gutter.bg=${ui.highlight}
completion_pill.bg=${ui.winbar}
completion_pill.reverse=false

spinner.bg=${ui.base}
spinner.fg=${ui.text}

selector_focused.bold=false
selector_focused.bg=${ui.highlight}
selector_focused.fg=${ui.text}
selector_chooser.bold=false
selector_chooser.bg=${ui.selection}
selector_chooser.fg=${ui.text}
default.selected.bold=false
default.selected.fg=${ui.text}
default.selected.bg=${ui.selection}

[viewer]
url.underline=true
url.fg=${syntax.blue}
header.fg=${syntax.purple}
signature.fg=${ui.purple}
diff_add.fg=${syntax.green}
diff_del.fg=${syntax.red}
diff_meta.bold=true
diff_chunk.dim=true
quote_1.fg=${syntax.yellow}
quote_2.fg=${syntax.green}
quote_3.fg=${syntax.cyan}
quote_3.dim=true
quote_4.fg=${syntax.blue}
quote_4.dim=true
quote_x.fg=${syntax.comment}
quote_x.dim=true
]],
    colors
  )
end

return M
