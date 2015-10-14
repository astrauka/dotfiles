#!/usr/bin/env bash

echo "Configuring leinigen"
source "$HOME/dotfiles/install/config.sh"

LEIN_PATH="$HOME/bin"
LEIN_EXEC="$LEIN_PATH/lein"

if [ -e "$LEIN_PATH" ]; then
  echo "Info: already setup. Done"
  # exit 1
fi

mkdir -p $LEIN_PATH

$CURL https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -o $LEIN_EXEC
export PATH="${LEIN_PATH}:${PATH}"
chmod a+x $LEIN_EXEC
$LEIN_EXEC

echo "Done"
