#!/usr/bin/env bash

echo "Configuring vim"
source "$HOME/dotfiles/install/config.sh"

if [[ -e ~/.vim ]]; then
  echo "Info: vim configuration already setup. Done"
  exit 1
fi

if ! [ `which vim` ]; then
  if [[ $OS_TYPE != "OSX" ]]; then
    sudo apt-get install -y vim
  fi
fi

$GIT clone https://github.com/astrauka/vimfiles ~/.vim

ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/vimrc.bundles ~/.vimrc.bundles

echo "Launch vim and run :BundleInstall to complete installation"
