#!/usr/bin/env bash

echo "Configuring tmuxinator"
source "./config.sh"

$GIT clone https://github.com/tony/tmux-config.git ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

echo "Tmuxinator configured"
