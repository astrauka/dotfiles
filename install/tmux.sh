#!/usr/bin/env bash

echo "Configuring tmuxinator"
source "$HOME/dotfiles/install/config.sh"

if [[ -e ~/.tmux.conf ]]; then
  echo "Info: tmux configuration already setup. Done"
  exit 1
fi

if [[ $OS_TYPE == "OSX" ]]; then
  brew install tmux
else
  sudo apt-get -y install tmux
fi

TMUX_BASH_SOURCE="https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash"
TMUX_BASH_DIR="$HOME/.bin"
mkdir -p "$TMUX_BASH_DIR"

$CURL $TMUX_BASH_SOURCE -o "$TMUX_BASH_DIR/tmuxinator.bash"

ln -sf "$DOT_HOME/tmux/conf" ~/.tmux.conf

echo "Tmuxinator configured"
