#!/usr/bin/env bash

echo "Configuring leinigen"
source "$HOME/dotfiles/install/config.sh"

if [ `which lein` ]; then
  echo "Info: already setup. Done"
  exit 1
fi

LEIN_EXEC="$BIN_PATH/lein"

$CURL https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -o $LEIN_EXEC
chmod a+x $LEIN_EXEC
$LEIN_EXEC

echo "Done"
