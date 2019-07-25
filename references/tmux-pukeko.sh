#!/bin/bash
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
tmux new-session -s project

# Setup a window for compiling elixir
tmux new-window -t project:2 -n 'Elixir'
tmux split-window -h
tmux select-pane -t 0
tmux send-keys "cd ${__dir}" C-m
tmux send-keys "iex -S mix phx.server" C-m
tmux select-pane -t 1
tmux send-keys "cd ${__dir}/proto" C-m
tmux send-keys "npm run autobuild" C-m