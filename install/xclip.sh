#!/usr/bin/env bash

echo "Configuring xclip"
source "$HOME/dotfiles/install/config.sh"

if [ `which xclip` ]; then
  echo "Info: xclip already setup. Done"
  exit 1
fi

if [ $OS_TYPE!="OSX" ]; then
  sudo apt-get install xclip
fi

echo "Done xclip"
