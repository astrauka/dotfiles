#!/usr/bin/env bash

echo "Configuring rbenv-sudo"
source "$HOME/dotfiles/install/config.sh"

PLUGIN_PATH="~/.rbenv/plugins/rbenv-sudo"

if [[ -e $PLUGIN_PATH ]]; then
  echo "Info: already setup. Done"
  exit 1
fi

$GIT clone git://github.com/dcarley/rbenv-sudo.git $PLUGIN_PATH

echo "Done"
