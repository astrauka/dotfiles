#!/usr/bin/env bash

echo "Configuring ctags"
source "./config.sh"

if [ OS_TYPE="OSX" ]; then
  brew install ctags
else
  echo "sudo apt-get install exuberant-ctags"
  sudo apt-get install exuberant-ctags
fi

echo "Done"
