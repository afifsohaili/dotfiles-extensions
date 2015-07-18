#!/bin/sh

tmux new -d -s Booster -n fulcrum
tmux send-keys -t Booster:1 "cd ~/Booster/fulcrum" C-m
tmux new-window -n rails-server
tmux send-keys -t Booster:2 "cd ~/Booster/dev_proxy" C-m
tmux new-window -n styleguide
tmux send-keys -t Booster:3 "cd ~/Booster/styleguide" C-m

