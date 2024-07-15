local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
[manager]
# NOTE: can combined with tmTheme (sublime colorshceme file) for preview code highlight
# highlight = "path/to/tmTheme"

cwd = { fg = "${ui.text_inactive}", italic = true }

# Hovered
hovered         = { bg = "${ui.selection}" }
preview_hovered = { bg = "${ui.selection}" }

# Find
find_keyword  = { fg = "${ui.base}", bg = "${ui.orange}", bold = true }
find_position = { fg = "${ui.blue}", bg = "${ui.selection}", bold = true }

# Marker
marker_copied   = { fg = "${ui.green}", bg = "${ui.green}" }
marker_cut      = { fg = "${ui.red}", bg = "${ui.red}" }
marker_marked   = { fg = "${ui.purple}", bg = "${ui.purple}" }
marker_selected = { fg = "${ui.blue}", bg = "${ui.blue}" }

# Tab
tab_active   = { fg = "${ui.text_active}", bg = "${ui.base}" }
tab_inactive = { fg = "${ui.text_inactive}", bg = "${ui.tabline}" }
tab_width    = 1

# Count
count_copied   = { fg = "${ui.text}", bg = "${ui.green}" }
count_cut      = { fg = "${ui.text}", bg = "${ui.red}" }
count_selected = { fg = "${ui.text}", bg = "${ui.accent}" }
# Border
border_symbol = "│"
border_style  = { fg = "${ui.border}" }

[status]
separator_open  = ""
separator_close = ""
separator_style = { fg = "${ui.none_text}", bg = "${ui.none_text}" }

# Mode
mode_normal = { fg = "${ui.base}", bg = "${ui.blue}", bold = true }
mode_select = { fg = "${ui.base}", bg = "${ui.purple}", bold = true }
mode_unset  = { fg = "${ui.base}", bg = "${ui.red}", bold = true }

# Progress
progress_label  = { fg = "${ui.text_inactive}", bold = true }
progress_normal = { fg = "${ui.base}" }
progress_error  = { fg = "${ui.red}" }

# Permissions
permissions_t = { fg = "${ui.blue}" }
permissions_r = { fg = "${ui.yellow}" }
permissions_w = { fg = "${ui.red}" }
permissions_x = { fg = "${ui.green}" }
permissions_s = { fg = "${ui.none_text}" }

[select]
border   = { fg = "${ui.border}" }
active   = { fg = "${ui.text}",  bg = "${ui.selection}" }
inactive = { fg = "${ui.text}" }

# Input
[input]
border   = { fg = "${ui.accent}" }
title    = { fg = "${ui.title}" }
value    = { fg = "${ui.purple}" }
selected = { bg = "${ui.selection}" }

# Completion
[completion]
border   = { fg = "${ui.accent}" }
active   = { fg = "${ui.text}", bg = "${ui.selection}" }
inactive = { fg = "${ui.text}" }

# Tasks
[tasks]
border  = { fg = "${ui.border}" }
title   = { fg = "${ui.title}" }
hovered = { fg = "${ui.text}", bg="${ui.selection}" }

# Which
[which]
cols = 3
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

# Help
[help]
on      = { fg = "${ui.green}" }
run     = { fg = "${ui.purple}" }
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
	{ name = "*", is = "orphan", bg = "${syntax.red}" },
	{ name = "*", is = "exec"  , fg = "${syntax.green}" },

	# Fallback
	{ name = "*/", fg = "${syntax.blue}" }
]
]],
    colors
  )
end

return M
