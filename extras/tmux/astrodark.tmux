#!/usr/bin/env bash

# AstroDark colors for Tmux

set -g mode-style "fg=#50A4E9,bg=#26343F"

set -g message-style "fg=#50A4E9,bg=#26343F"
set -g message-command-style "fg=#50A4E9,bg=#26343F"

set -g pane-border-style "fg=#26343F"
set -g pane-active-border-style "fg=#50A4E9"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#50A4E9,bg=#111317"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#1A1D23,bg=#50A4E9,bold] #S #[fg=#50A4E9,bg=#111317,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#111317,bg=#111317,nobold,nounderscore,noitalics]#[fg=#50A4E9,bg=#111317] #{prefix_highlight} #[fg=#26343F,bg=#111317,nobold,nounderscore,noitalics]#[fg=#50A4E9,bg=#26343F] %Y-%m-%d  %I:%M %p #[fg=#50A4E9,bg=#26343F,nobold,nounderscore,noitalics]#[fg=#1A1D23,bg=#50A4E9,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" = "24" ]' {
  set -g status-right "#[fg=#111317,bg=#111317,nobold,nounderscore,noitalics]#[fg=#50A4E9,bg=#111317] #{prefix_highlight} #[fg=#26343F,bg=#111317,nobold,nounderscore,noitalics]#[fg=#50A4E9,bg=#26343F] %Y-%m-%d  %H:%M #[fg=#50A4E9,bg=#26343F,nobold,nounderscore,noitalics]#[fg=#1A1D23,bg=#50A4E9,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#494D56,bg=#111317"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#494D56,bg=#111317"
setw -g window-status-format "#[fg=#111317,bg=#111317,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#111317,bg=#111317,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#111317,bg=#26343F,nobold,nounderscore,noitalics]#[fg=#50A4E9,bg=#26343F,bold] #I  #W #F #[fg=#26343F,bg=#111317,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#D09214]#[bg=#111317]#[fg=#111317]#[bg=#D09214]"
set -g @prefix_highlight_output_suffix ""
