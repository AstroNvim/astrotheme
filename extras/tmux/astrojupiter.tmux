#!/usr/bin/env bash

# AstroJupiter colors for Tmux

set -g mode-style "fg=#D04F4E,bg=#BBC9D7"

set -g message-style "fg=#D04F4E,bg=#BBC9D7"
set -g message-command-style "fg=#D04F4E,bg=#BBC9D7"

set -g pane-border-style "fg=#BBC9D7"
set -g pane-active-border-style "fg=#D04F4E"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#D04F4E,bg=#D8D6D5"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#FEEEEE,bg=#D04F4E,bold] #S #[fg=#D04F4E,bg=#D8D6D5,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#D8D6D5,bg=#D8D6D5,nobold,nounderscore,noitalics]#[fg=#D04F4E,bg=#D8D6D5] #{prefix_highlight} #[fg=#BBC9D7,bg=#D8D6D5,nobold,nounderscore,noitalics]#[fg=#D04F4E,bg=#BBC9D7] %Y-%m-%d  %I:%M %p #[fg=#D04F4E,bg=#BBC9D7,nobold,nounderscore,noitalics]#[fg=#FEEEEE,bg=#D04F4E,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#D8D6D5,bg=#D8D6D5,nobold,nounderscore,noitalics]#[fg=#D04F4E,bg=#D8D6D5] #{prefix_highlight} #[fg=#BBC9D7,bg=#D8D6D5,nobold,nounderscore,noitalics]#[fg=#D04F4E,bg=#BBC9D7] %Y-%m-%d  %H:%M #[fg=#D04F4E,bg=#BBC9D7,nobold,nounderscore,noitalics]#[fg=#FEEEEE,bg=#D04F4E,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#937C7A,bg=#D8D6D5"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#937C7A,bg=#D8D6D5"
setw -g window-status-format "#[fg=#D8D6D5,bg=#D8D6D5,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#D8D6D5,bg=#D8D6D5,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#D8D6D5,bg=#BBC9D7,nobold,nounderscore,noitalics]#[fg=#D04F4E,bg=#BBC9D7,bold] #I  #W #F #[fg=#BBC9D7,bg=#D8D6D5,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#AC7300]#[bg=#D8D6D5]#[fg=#D8D6D5]#[bg=#AC7300]"
set -g @prefix_highlight_output_suffix ""
