#!/usr/bin/env bash

echo "Configuring vim"
source "./config.sh"

if [[ -e ~/.vim ]]; then
  echo "Info: vim configuration already setup. Done"
  exit 1
fi

$GIT clone https://github.com/astrauka/vimfiles ~/.vim

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/vimrc.bundles ~/.vimrc.bundles

echo "Launch vim and run :BundleInstall to complete installation"
