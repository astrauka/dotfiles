#!/usr/bin/env bash

echo "Configuring rbenv-rehash"
source "$HOME/dotfiles/install/config.sh"

PLUGIN_PATH="~/.rbenv/plugins/rbenv-gem-rehash"

if [[ -e $PLUGIN_PATH ]]; then
  echo "Info: already setup. Done"
  exit 1
fi

$GIT clone https://github.com/sstephenson/rbenv-gem-rehash.git $PLUGIN_PATH

echo "Done"
