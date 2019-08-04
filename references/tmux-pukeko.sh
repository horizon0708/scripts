#!/bin/bash
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__project="${PWD##*/}"
# tmux new-session -s "${__project}"

tmux -2 new-session -d -s "${__project}" 

# Setup a window for compiling elixir
tmux new-window -t "${__project}":1 -n 'Elixir'
tmux split-window -h
tmux select-pane -t 0
tmux send-keys "cd ${__dir}" C-m
tmux send-keys "iex -S mix phx.server" C-m
tmux select-pane -t 1
tmux send-keys "cd ${__dir}/proto" C-m
tmux send-keys "npm run autobuild" C-m
tmux split-window -v
tmux select-pane -t 2
tmux send-keys "cd ${__dir}" C-m

tmux -2 attach-session -t "${__project}"