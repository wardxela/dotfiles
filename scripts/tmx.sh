#!/usr/bin/env bash

if tmux has-session -t work 2>/dev/null; then
  tmux attach-session -t work
else
  tmux new-session -d -s work
  tmux rename-window -t 1 app
  tmux new-window -d -n sh
  tmux attach-session -d -t work
fi
