#!/usr/bin/env bash

echo "Configuring git"
source "$HOME/dotfiles/install/config.sh"

if [[ -e ~/.git-completion.bash ]]; then
  echo "Info: configuration already setup. Done"
  exit 1
fi

$CURL https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

ln -sf "$DOT_HOME/git/config" ~/.gitconfig
ln -sf "$DOT_HOME/git/ignore" ~/.gitignore

echo "Done"
