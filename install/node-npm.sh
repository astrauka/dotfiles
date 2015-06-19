#!/usr/bin/env bash

echo "Configuring npm"
source "$HOME/dotfiles/install/config.sh"

if [ -e "$NVM_PATH" ]; then
  echo "Info: already setup. Done"
  exit 1
fi

$CURL -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

source "$DOT_HOME/bashrc/sources/npm"
nvm install stable
nvm use stable
nvm alias default stable

echo "Done"
