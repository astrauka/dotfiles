#!/usr/bin/env bash

echo "Configuring tmuxinator"
source "$HOME/dotfiles/install/config.sh"

if [[ -e ~/.tmux.conf ]]; then
  echo "Info: tmux configuration already setup. Done"
  exit 1
fi

if [ $OS_TYPE="OSX" ]; then
  brew install tmux
else
  sudo apt-get install tmux
fi


ln -sf "$DOT_HOME/tmux/conf" ~/.tmux.conf

echo "Tmuxinator configured"
