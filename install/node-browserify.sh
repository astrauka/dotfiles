#!/usr/bin/env bash

echo "Configuring browserify"
source "$HOME/dotfiles/install/config.sh"
source "$HOME/dotfiles/bashrc/sources/npm"

npm install -g browserify
npm link browserify
