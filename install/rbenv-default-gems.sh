#!/usr/bin/env bash

echo "Configuring rbenv-default-gems"
source "$HOME/dotfiles/install/config.sh"

PLUGIN_PATH="~/.rbenv/plugins/rbenv-default-gems"

if [[ -e $PLUGIN_PATH ]]; then
  echo "Info: already setup. Done"
  exit 1
fi

ln -sf "$DOT_HOME/rbenv/default-gems" ~/.rbenv/default-gems

$GIT clone https://github.com/sstephenson/rbenv-default-gems.git $PLUGIN_PATH

echo "Done"
