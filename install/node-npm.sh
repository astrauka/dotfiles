#!/usr/bin/env bash

echo "Configuring npm"
source "$HOME/dotfiles/install/config.sh"

nvm_latest_version() {
  echo $(latest_tag)
}

nvm_source() {
  echo "https://github.com/creationix/nvm.git"
}

nvm_installed_version() {
  source "$NVM_PATH/nvm.sh"
  echo "$(nvm --version)"
}

latest_tag() {
# Source: https://github.com/svnpenn/a/blob/master/misc/git-describe-remote.awk
awk -F: 'BEGIN {
  FS = "[ /^]+"
  while ("git ls-remote ""'$(nvm_source)'""| sort -Vk2" | getline) {
    tag = $3
  }
  print tag
}'
}

install_nvm_from_git() {
  if [ -d "$NVM_PATH/.git" ]; then
    echo "=> nvm is already installed in $NVM_PATH, trying to update using git"
    printf "\r=> "
    cd "$NVM_PATH" && (command git fetch 2> /dev/null || {
      echo >&2 "Failed to update nvm, run 'git fetch' in $NVM_PATH yourself." && exit 1
    })
  else
    # Cloning to $NVM_PATH
    echo "=> Downloading nvm from git to '$NVM_PATH'"
    printf "\r=> "
    mkdir -p "$NVM_PATH"
    command git clone "$(nvm_source git)" "$NVM_PATH"
  fi
  cd "$NVM_PATH" && command git checkout --quiet $(nvm_latest_version)
  if [ ! -z "$(cd "$NVM_PATH" && git show-ref refs/heads/master)" ]; then
    if git branch --quiet 2>/dev/null; then
      cd "$NVM_PATH" && command git branch --quiet -D master >/dev/null 2>&1
    else
      echo >&2 "Your version of git is out of date. Please update it!"
      cd "$NVM_PATH" && command git branch -D master >/dev/null 2>&1
    fi
  fi
  return
}

nvm_install() {
  install_nvm_from_git
  echo
  echo "nvm $(nvm_installed_version) is installed."
  nvm_reset
}


nvm_reset() {
  unset -f nvm_reset nvm_latest_version \
        nvm_source install_nvm_from_git \
    nvm_installed_version latest_tag \
    nvm_install
}

nvm_install

echo "Done"
