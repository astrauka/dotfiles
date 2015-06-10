#!/usr/bin/env bash

echo "Configuring git hooks"
source "$HOME/dotfiles/install/config.sh"

if [[ -e ~/.git/hooks/pre-push.sh ]]; then
  echo "Info: configuration already setup. Done"
  exit 1
fi

mkdir -p ~/.git/hooks
curl https://gist.githubusercontent.com/pixelhandler/5718585/raw/1ee3948c6676b704fb9da424c65a767f2c88ae37/pre-push.sh -o ~/.git/hooks/pre-push.sh
chmod +x ~/.git/hooks/pre-push.sh

echo "Done"
