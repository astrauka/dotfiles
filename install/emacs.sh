#!/usr/bin/env bash

echo "Configuring emacs"
source "$HOME/dotfiles/install/config.sh"

if [ `which emacs` ]; then
  echo "Info: already setup. Done"
  exit 1
fi

if [ $OS_TYPE!="OSX" ]; then
  sudo apt-get install emacs24 mercurial texinfo emacs24-el editorconfig
fi

rm -rf ~/.emacs ~/.emacs.d

$GIT clone $EMACS_CONFIG_REPO ~/.emacs.d
ln -sf "$DOT_HOME/lein/profiles.clj" ~/.lein/profiles.clj

echo "Done"
