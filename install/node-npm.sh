#!/usr/bin/env bash

echo "Configuring npm"
source "$HOME/dotfiles/install/config.sh"
NVM_VERSION="0.33.2"
NODE_VERSION="7.9.0"

if [[ -e ~/.nvm ]]; then
  echo "Info: configuration already setup. Done"
  exit 1
fi

$CURL -o- https://raw.githubusercontent.com/creationix/nvm/v$NVM_VERSION/install.sh | bash
source "$HOME/.bashrc"
nvm install $NODE_VERSION

echo "Done"
