#!/usr/bin/env bash

echo "Sourcing variables"
source "$HOME/dotfiles/install/config.sh"

echo "Checking dependencies"

if [[ ! -x $GIT ]]; then
  echo 'Error: git not found!'
  exit 1
fi

if [[ ! -x $WGET ]]; then
  echo 'Error: wget not found!'
  exit 1
fi

if [[ ! -e $DOT_HOME ]]; then
  git clone $DOTFILES_REPO $DOT_HOME
fi

if [[ ! -e $SUBLIME_PATH ]]; then
  echo "Error: Sublime not installed!"
  exit 1
fi

echo "Configuring Sublime.."
rm -frv "$SUBLIME_PATH/Packages/User"
ln -sv "$DOT_HOME/sublime-text-3/" "$SUBLIME_PATH/Packages/User"

PACKAGE_CONTROL_PKG="$SUBLIME_PATH/Installed Packages/Package Control.sublime-package"
if [[ ! -e "$PACKAGE_CONTROL_PKG" ]]; then
  echo 'Installing Package Control..'
  $WGET "https://sublime.wbond.net/Package%20Control.sublime-package" -O "$PACKAGE_CONTROL_PKG"
  echo 'Package Control installed.'
fi

if [ $OS_TYPE="OSX" ]; then
  defaults write -g ApplePressAndHoldEnabled -bool false
fi

echo "Sublime configured."
