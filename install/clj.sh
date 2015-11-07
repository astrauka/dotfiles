#!/usr/bin/env bash

echo "Configuring clj"
source "$HOME/dotfiles/install/config.sh"

if ! [ `which rlwrap` ]; then
  if [ $OS_TYPE!="OSX" ]; then
    sudo apt-get install -y rlwrap
  fi
fi

CLJS_REPL_BIN="$DOT_HOME/clj/cljs-repl"
ln -sf $CLJS_REPL_BIN "$BIN_PATH/"
chmod +x $CLJS_REPL_BIN

echo "Done"
