#!/usr/bin/env bash

echo "Configuring tmuxinator"
source "./config.sh"

if [[ -e ~/.tmux.conf ]]; then
  echo "Info: tmux configuration already setup. Done"
  exit 1
fi

ln -sf "$DOT_HOME/tmux/conf" ~/.tmux.conf

echo "Tmuxinator configured"
