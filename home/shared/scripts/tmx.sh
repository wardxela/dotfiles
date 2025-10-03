#!/usr/bin/env bash

SESSION_NAME="W"

if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
  tmux attach-session -t"$SESSION_NAME"
else
  tmux new-session -d -s "$SESSION_NAME"
  tmux rename-window -t 1 shell
  tmux new-window -d -n shell -t 2
  tmux new-window -d -n shell -t 3
  tmux new-window -d -n shell -t 4
  tmux new-window -d -n shell -t 5
  tmux new-window -d -n shell -t 6
  tmux new-window -d -n shell -t 7
  tmux new-window -d -n shell -t 8
  tmux new-window -d -n shell -t 9
  tmux attach-session -d -t "$SESSION_NAME"
fi
