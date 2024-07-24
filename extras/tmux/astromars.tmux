#!/usr/bin/env bash

# AstroMars colors for Tmux

set -g mode-style "fg=#9CBDC9,bg=#1B282C"

set -g message-style "fg=#9CBDC9,bg=#1B282C"
set -g message-command-style "fg=#9CBDC9,bg=#1B282C"

set -g pane-border-style "fg=#1B282C"
set -g pane-active-border-style "fg=#9CBDC9"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#9CBDC9,bg=#281E22"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#1E1517,bg=#9CBDC9,bold] #S #[fg=#9CBDC9,bg=#281E22,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#281E22,bg=#281E22,nobold,nounderscore,noitalics]#[fg=#9CBDC9,bg=#281E22] #{prefix_highlight} #[fg=#1B282C,bg=#281E22,nobold,nounderscore,noitalics]#[fg=#9CBDC9,bg=#1B282C] %Y-%m-%d  %I:%M %p #[fg=#9CBDC9,bg=#1B282C,nobold,nounderscore,noitalics]#[fg=#1E1517,bg=#9CBDC9,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#281E22,bg=#281E22,nobold,nounderscore,noitalics]#[fg=#9CBDC9,bg=#281E22] #{prefix_highlight} #[fg=#1B282C,bg=#281E22,nobold,nounderscore,noitalics]#[fg=#9CBDC9,bg=#1B282C] %Y-%m-%d  %H:%M #[fg=#9CBDC9,bg=#1B282C,nobold,nounderscore,noitalics]#[fg=#1E1517,bg=#9CBDC9,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#68545B,bg=#281E22"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#68545B,bg=#281E22"
setw -g window-status-format "#[fg=#281E22,bg=#281E22,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#281E22,bg=#281E22,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#281E22,bg=#1B282C,nobold,nounderscore,noitalics]#[fg=#9CBDC9,bg=#1B282C,bold] #I  #W #F #[fg=#1B282C,bg=#281E22,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#FFA31A]#[bg=#281E22]#[fg=#281E22]#[bg=#FFA31A]"
set -g @prefix_highlight_output_suffix ""
