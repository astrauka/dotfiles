#!/usr/bin/env bash

echo "Configuring rust"
source "$HOME/dotfiles/install/config.sh"

if ! [ `which rustc` ]; then
  curl -sSf https://static.rust-lang.org/rustup.sh | sh
fi

cargo install racer rustfmt

echo "Done"
