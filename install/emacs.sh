#!/usr/bin/env bash

echo "Configuring emacs"
source "$HOME/dotfiles/install/config.sh"

if [ `which emacs` ]; then
  echo "Info: already setup. Done"
  exit 1
fi

if [ $OS_TYPE!="OSX" ]; then
  sudo apt-get install -y emacs24 mercurial texinfo emacs24-el editorconfig autocong
fi

rm -rf ~/.emacs

bash <(curl -fksSL https://raw.github.com/overtone/emacs-live/master/installer/install-emacs-live.sh)
ln -sf "$DOT_HOME/lein/profiles.clj" ~/.lein/profiles.clj

echo "Done"
