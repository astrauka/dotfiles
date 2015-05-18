#!/usr/bin/env bash

echo "Configuring npm"
source "./config.sh"

NVM_PATH="$HOME/.nvm"

if [ -e "$NVM_PATH" ]; then
  echo "Info: already setup. Done"
  exit 1
fi

$CURL https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh

source "../bashrc/sources/npm"
nvm install stable
nvm use stable
nvm alias default stable

echo "Done"
