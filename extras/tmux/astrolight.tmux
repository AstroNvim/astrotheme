#!/usr/bin/env bash

# AstroLight colors for Tmux

set -g mode-style "fg=#671FF0,bg=#E7E9EB"

set -g message-style "fg=#671FF0,bg=#E7E9EB"
set -g message-command-style "fg=#671FF0,bg=#E7E9EB"

set -g pane-border-style "fg=#E7E9EB"
set -g pane-active-border-style "fg=#671FF0"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#671FF0,bg=#E1E2E4"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#F7F8F8,bg=#671FF0,bold] #S #[fg=#671FF0,bg=#E1E2E4,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#E1E2E4,bg=#E1E2E4,nobold,nounderscore,noitalics]#[fg=#671FF0,bg=#E1E2E4] #{prefix_highlight} #[fg=#E7E9EB,bg=#E1E2E4,nobold,nounderscore,noitalics]#[fg=#671FF0,bg=#E7E9EB] %Y-%m-%d  %I:%M %p #[fg=#671FF0,bg=#E7E9EB,nobold,nounderscore,noitalics]#[fg=#F7F8F8,bg=#671FF0,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#E1E2E4,bg=#E1E2E4,nobold,nounderscore,noitalics]#[fg=#671FF0,bg=#E1E2E4] #{prefix_highlight} #[fg=#E7E9EB,bg=#E1E2E4,nobold,nounderscore,noitalics]#[fg=#671FF0,bg=#E7E9EB] %Y-%m-%d  %H:%M #[fg=#671FF0,bg=#E7E9EB,nobold,nounderscore,noitalics]#[fg=#F7F8F8,bg=#671FF0,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#AEB3B6,bg=#E1E2E4"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#AEB3B6,bg=#E1E2E4"
setw -g window-status-format "#[fg=#E1E2E4,bg=#E1E2E4,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#E1E2E4,bg=#E1E2E4,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#E1E2E4,bg=#E7E9EB,nobold,nounderscore,noitalics]#[fg=#671FF0,bg=#E7E9EB,bold] #I  #W #F #[fg=#E7E9EB,bg=#E1E2E4,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#E69400]#[bg=#E1E2E4]#[fg=#E1E2E4]#[bg=#E69400]"
set -g @prefix_highlight_output_suffix ""
