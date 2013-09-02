#!/bin/bash

export TERM=screen-256color-bce

tmux has-session -t  sitedity 2>/dev/null

if [ "$?" -eq 1 ]; then
    tmux new-session -d -s sitedity
    tmux send-keys 'cd ~/work/sitedity; m' 'C-m'
    tmux split-window -h
    tmux send-keys 'cd ~/work/sitedity; v' 'C-m'
    tmux split-window -v -t 0
    tmux send-keys 'cd ~/work/sitedity/scripts; rake' 'C-m'
fi

tmux -2 attach-session -t sitedity

