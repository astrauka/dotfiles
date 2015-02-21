#!/usr/bin/env bash

DOT_HOME="$HOME/dotfiles"
CLOJURE_SETUP_HOME="$DOT_HOME/SublimeClojureSetup"
SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 3"
PACKAGES_PATH="$SUBLIME_PATH/Packages"
USER_PACKAGES_PATH="$SUBLIME_PATH/Packages/User"

WGET=`which wget`
GIT=`which git`

if [[ ! -x $GIT ]]; then
  echo 'Error: git not found!'
  exit 1
fi

if [[ ! -x $WGET ]]; then
  echo 'Error: wget not found!'
  exit 1
fi

if [[ ! -e $DOT_HOME ]]; then
  $GIT clone git@github.com:astrauka/dotfiles.git $DOT_HOME
fi

if [[ ! -e $CLOJURE_SETUP_HOME ]]; then
  git clone git@github.com:jasongilman/SublimeClojureSetup.git $CLOJURE_SETUP_HOME
fi

if [[ -e $SUBLIME_PATH ]]; then
  echo "Configuring Sublime.."
  rm -frv "$USER_PACKAGES_PATH"
  ln -sv "$DOT_HOME/sublime-text-3/" "$USER_PACKAGES_PATH"

  PACKAGE_CONTROL_PKG="$SUBLIME_PATH/Installed Packages/Package Control.sublime-package"
  if [[ ! -e "$PACKAGE_CONTROL_PKG" ]]; then
    echo 'Installing Package Control..'
    $WGET "https://sublime.wbond.net/Package%20Control.sublime-package" -O "$PACKAGE_CONTROL_PKG"
    echo 'Package Control installed.'
  fi

  echo "Enabling keyhold"
  defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false

  echo "Sublime configured."
else
  echo "[Warn] Sublime not installed!"
fi

chmod +x $DOT_HOME/setup*
echo "Done!"
