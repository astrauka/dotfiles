#!/usr/bin/env bash

echo "Configuring xscast"
source "$HOME/dotfiles/install/config.sh"

if [ `which xscast` ]; then
  echo "Info: xscast already setup. Done"
  exit 1
fi

if [ $OS_TYPE!="OSX" ]; then
  sudo apt-get install byzanz x11-utils xinput dzen2
fi

$GIT clone "$XSCAST_REPO" "$XSCAST_PATH"
/bin/sh "$XSCAST_PATH/.xscast.sh --config"

echo "Done xscast"
