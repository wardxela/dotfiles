#!/usr/bin/env bash

SESSION_NAME="tmux"

if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
  tmux attach-session -t"$SESSION_NAME"
else
  tmux new-session -d -s "$SESSION_NAME"
  tmux rename-window -t 1 main
  tmux new-window -d -n shell -t 2
  tmux new-window -d -n shell -t 3
  tmux new-window -d -n shell -t 4
  tmux new-window -d -n music -t 5
  tmux send-keys -t $SESSION_NAME:5 'termusic' C-m
  tmux attach-session -d -t "$SESSION_NAME"
fi
