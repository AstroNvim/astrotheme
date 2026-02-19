local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
"$schema" = "https://yazi-rs.github.io/schemas/theme.json"

[app]
overall = { bg = "${ui.base}" }

[mgr]
cwd = { fg = "${ui.text_inactive}", italic = true }

# Find
find_keyword  = { fg = "${ui.base}", bg = "${ui.orange}", bold = true }
find_position = { fg = "${ui.blue}", bg = "${ui.selection}", bold = true }

# Symlink
symlink_target = { italic = true }

# Marker
marker_copied   = { fg = "${ui.green}", bg = "${ui.green}" }
marker_cut      = { fg = "${ui.red}", bg = "${ui.red}" }
marker_marked   = { fg = "${ui.purple}", bg = "${ui.purple}" }
marker_selected = { fg = "${ui.blue}", bg = "${ui.blue}" }

# Count
count_copied   = { fg = "${ui.text}", bg = "${ui.green}" }
count_cut      = { fg = "${ui.text}", bg = "${ui.red}" }
count_selected = { fg = "${ui.text}", bg = "${ui.accent}" }

# Border
border_symbol = "│"
border_style  = { fg = "${ui.border}" }

# NOTE: can be combined with tmTheme (sublime colorshceme file) for preview code highlight
# syntect_theme = "path/to/tmTheme"

# Tab
[tabs]
active   = { fg = "${ui.text_active}", bg = "${ui.base}" }
inactive = { fg = "${ui.text_inactive}", bg = "${ui.tabline}" }

# Mode
[mode]
normal_main = { fg = "${ui.base}", bg = "${ui.blue}", bold = true }
normal_alt  = { fg = "${ui.blue}", bg = "${ui.inactive_base}" }

select_main = { fg = "${ui.base}", bg = "${ui.purple}", bold = true }
select_alt  = { fg = "${ui.purple}", bg = "${ui.inactive_base}" }

unset_main  = { fg = "${ui.base}", bg = "${ui.red}", bold = true }
unset_alt   = { fg = "${ui.red}", bg = "${ui.inactive_base}" }

# Indicator
[indicator]
parent  = { bg = "${ui.selection}" }
current = { bg = "${ui.selection}" }
preview = { bg = "${ui.selection}" }

# Status
[status]
sep_right  = { open = "", close = "" }
sep_left   = { open = "", close = "" }
overall    = { fg = "${ui.none_text}", bg = "${ui.none_text}" }

# Progress
progress_label  = { fg = "${ui.text_inactive}", bold = true }
progress_normal = { fg = "${ui.base}" }
progress_error  = { fg = "${ui.red}" }

# Permissions
perm_type = { fg = "${ui.blue}" }
perm_read = { fg = "${ui.yellow}" }
perm_write = { fg = "${ui.red}" }
perm_exec = { fg = "${ui.green}" }
perm_sep = { fg = "${ui.none_text}" }

# Input
[input]
border   = { fg = "${ui.accent}" }
title    = { fg = "${ui.title}" }
value    = { fg = "${ui.purple}" }
selected = { bg = "${ui.selection}" }

# Completion
[cmp]
border   = { fg = "${ui.accent}" }
active   = { fg = "${ui.text}", bg = "${ui.selection}" }
inactive = { fg = "${ui.text}" }

# Icons
icon_file    = ""
icon_folder  = ""
icon_command = ""

# Tasks
[tasks]
border  = { fg = "${ui.border}" }
title   = { fg = "${ui.title}" }
hovered = { fg = "${ui.text}", bg="${ui.selection}" }

# Confirm
[confirm]
border  = { fg = "${ui.accent}" }
title   = { fg = "${ui.accent}" }
content = {}
body = {}
list    = {}
btn_yes = { reversed = true }
btn_no  = {}

# Spot
[spot]
border = { fg = "${ui.border}" }
title = { fg = "${ui.border}" }

# Which
[which]
cols            = 3
mask            = { bg = "${ui.inactive_base}" }
cand            = { fg = "${ui.cyan}" }
rest            = { fg = "${ui.blue}" }
desc            = { fg = "${ui.purple}" }
separator       = "  "
separator_style = { fg = "${ui.none_text}" }

# Notify
[notify]
title_info  = { fg = "${ui.title}" }
title_warn  = { fg = "${ui.yellow}" }
title_error = { fg = "${ui.red}" }

# Icons
icon_info = ""
icon_warn = ""
icon_error = ""

# Pick
[pick]
border   = { fg = "${ui.border}" }
active   = { fg = "${ui.text}",  bg = "${ui.selection}" }
inactive = { fg = "${ui.text}" }

# Help
[help]
on      = { fg = "${ui.green}" }
run     = { fg = "${ui.purple}" }
desc    = { fg = "${ui.blue}" }
hovered = { bg = "${ui.selection}" }
footer  = { fg = "${ui.text}", bg = "${ui.base}" }

[filetype]
rules = [
	# Images
	{ mime = "image/*", fg = "${syntax.yellow}" },

	# Media
	{ mime = "{audio,video}/*", fg = "${syntax.purple}" },

	# Archives
	{ mime = "application/*zip", fg = "${syntax.red}" },
	{ mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}", fg = "${syntax.red}" },

	# Documents
	{ mime = "application/{pdf,doc,rtf,vnd.*}", fg = "${syntax.cyan}" },

	# Empty files
	# { mime = "inode/x-empty", fg = "${syntax.red}" },

	# Special files
	{ url = "*", is = "orphan", bg = "${syntax.red}" },
	{ url = "*", is = "exec"  , fg = "${syntax.green}" },

	# Fallback
	{ url = "*/", fg = "${syntax.blue}" },
	{ url = "*", fg = "${ui.text}" }
]
]],
    colors
  )
end

return M
