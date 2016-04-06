#!/usr/bin/env bash

echo "Configuring rbenv"
source "$HOME/dotfiles/install/config.sh"

if [[ -e ~/.rbenv ]]; then
  echo "Info: rbenv configuration already setup. Done"
  exit 1
fi

if ! [ `which rbenv` ]; then
  if [[ $OS_TYPE != "OSX" ]]; then
    $GIT clone https://github.com/rbenv/rbenv.git ~/.rbenv
    cd ~/.rbenv && src/configure && make -C src
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    ~/.rbenv/bin/rbenv init
    $GIT clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
  fi
fi

echo "DONE rbevn setup"

