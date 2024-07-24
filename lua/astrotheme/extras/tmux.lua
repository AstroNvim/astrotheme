local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
#!/usr/bin/env bash

# ${_style_name} colors for Tmux

set -g mode-style "fg=${ui.accent},bg=${ui.selection}"

set -g message-style "fg=${ui.accent},bg=${ui.selection}"
set -g message-command-style "fg=${ui.accent},bg=${ui.selection}"

set -g pane-border-style "fg=${ui.selection}"
set -g pane-active-border-style "fg=${ui.accent}"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=${ui.accent},bg=${ui.statusline}"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style ${none}
set -g status-right-style ${none}

set -g status-left "#[fg=${ui.base},bg=${ui.accent},bold] #S #[fg=${ui.accent},bg=${ui.statusline},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=${ui.statusline},bg=${ui.statusline},nobold,nounderscore,noitalics]#[fg=${ui.accent},bg=${ui.statusline}] #{prefix_highlight} #[fg=${ui.selection},bg=${ui.statusline},nobold,nounderscore,noitalics]#[fg=${ui.accent},bg=${ui.selection}] %Y-%m-%d  %I:%M %p #[fg=${ui.accent},bg=${ui.selection},nobold,nounderscore,noitalics]#[fg=${ui.base},bg=${ui.accent},bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=${ui.statusline},bg=${ui.statusline},nobold,nounderscore,noitalics]#[fg=${ui.accent},bg=${ui.statusline}] #{prefix_highlight} #[fg=${ui.selection},bg=${ui.statusline},nobold,nounderscore,noitalics]#[fg=${ui.accent},bg=${ui.selection}] %Y-%m-%d  %H:%M #[fg=${ui.accent},bg=${ui.selection},nobold,nounderscore,noitalics]#[fg=${ui.base},bg=${ui.accent},bold] #h "
}

setw -g window-status-activity-style "underscore,fg=${ui.text_inactive},bg=${ui.statusline}"
setw -g window-status-separator ""
setw -g window-status-style "${none},fg=${ui.text_inactive},bg=${ui.statusline}"
setw -g window-status-format "#[fg=${ui.statusline},bg=${ui.statusline},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=${ui.statusline},bg=${ui.statusline},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=${ui.statusline},bg=${ui.selection},nobold,nounderscore,noitalics]#[fg=${ui.accent},bg=${ui.selection},bold] #I  #W #F #[fg=${ui.selection},bg=${ui.statusline},nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=${ui.yellow}]#[bg=${ui.statusline}]#[fg=${ui.statusline}]#[bg=${ui.yellow}]"
set -g @prefix_highlight_output_suffix ""
]],
    colors
  )
end

return M
