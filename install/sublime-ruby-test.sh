#!/usr/bin/env bash

echo "Sourcing variables"
source "./config.sh"

if [[ ! -e $SUBLIME_PATH ]]; then
  echo "Error: Sublime not installed!"
  exit 1
fi

echo 'Installing RubyTest..'

rm -rf "$RUBY_TEST_PATH"
$GIT clone "$RUBY_TEST_REPO" "$RUBY_TEST_PATH"

echo 'RubyTest installed.'
