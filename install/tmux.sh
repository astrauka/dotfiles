#!/usr/bin/env bash

echo "Configuring tmuxinator"
source "./config.sh"

if [[ -e ~/.tmux ]]; then
  echo "Info: tmux configuration already setup. Done"
  exit 1
fi

$GIT clone https://github.com/tony/tmux-config.git ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

echo "Tmuxinator configured"
