#!/usr/bin/env bash

DOT_HOME="$HOME/dotfiles"
SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 3"
PACKAGES_PATH="$SUBLIME_PATH/Packages"

WGET=`which wget`
GIT=`which git`

if [[ -e $SUBLIME_PATH ]]; then
  RUBY_TEST_PATH="$PACKAGES_PATH/RubyTest"
  echo 'Installing RubyTest..'
  rm -rf "$RUBY_TEST_PATH"
  $GIT clone https://github.com/astrauka/sublime-text-2-ruby-tests.git "$RUBY_TEST_PATH"
  echo 'RubyTest installed.'
else
  echo "[Warn] Sublime not installed!"
fi
