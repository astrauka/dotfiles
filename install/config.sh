CURL=`which curl`
WGET=`which wget`
GIT=`which git`
DOTFILES_REPO="git@github.com:astrauka/dotfiles.git"
DOT_HOME="$HOME/dotfiles"
BIN_PATH="$HOME/bin"

if [[ "$OSTYPE" =~ ^linux  ]]; then
  OS_TYPE="LINUX"
  SUBLIME_PATH="$HOME/.config/sublime-text-3"
else
  OS_TYPE="OSX"
  SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 3"
fi

# sublime
PACKAGES_PATH="$SUBLIME_PATH/Packages"
USER_PACKAGES_PATH="$SUBLIME_PATH/Packages/User"
PACKAGE_CONTROL_PKG="$SUBLIME_PATH/Installed Packages/Package Control.sublime-package"

# sublime-ruby-test
RUBY_TEST_PATH="$PACKAGES_PATH/RubyTest"
RUBY_TEST_REPO="https://github.com/astrauka/sublime-text-2-ruby-tests.git"

# node
NVM_PATH="$HOME/.nvm"

mkdir -p $BIN_PATH
