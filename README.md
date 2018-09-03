# My personal dotfiles

Works for OSX and Linux

## Installing

```
git clone git@github.com:astrauka/dotfiles.git ~/dotfiles
cd ~/dotfiles/install
chmod +x *
```

### Stuff of your choice

```
./sublime.sh
./sublime-ruby-test.sh
./tmux.sh
./vim.sh
# see output how to install vim plugins

./git.sh
./xclip.sh
./xscast.sh
./emacs.sh

./rbenv.sh
# requires rbenv to be installed
./rbenv-rehash.sh
./rbenv-default-gems.sh
./rbenv-sudo.sh

# node
./node-npm.sh

# clojure
./lein.sh
./clj.sh

# rust
./rust.sh
```

### Bash profile

Append your `.bash_profile` file with:

```
# dotfiles
source "$HOME/dotfiles/bashrc/sources/common"
source "$HOME/dotfiles/bashrc/sources/terminal"
source "$HOME/dotfiles/bashrc/sources/command-line"
source "$HOME/dotfiles/bashrc/sources/ctags"
source "$HOME/dotfiles/bashrc/sources/git"
source "$HOME/dotfiles/bashrc/sources/postgres"
source "$HOME/dotfiles/bashrc/sources/rbenv"
source "$HOME/dotfiles/bashrc/sources/ruby"
source "$HOME/dotfiles/bashrc/sources/python"
source "$HOME/dotfiles/bashrc/sources/tmux"
source "$HOME/dotfiles/bashrc/sources/npm"
source "$HOME/dotfiles/bashrc/sources/xclip"
source "$HOME/dotfiles/bashrc/sources/xscast"
source "$HOME/dotfiles/bashrc/sources/lein"
source "$HOME/dotfiles/bashrc/sources/emacs"
source "$HOME/dotfiles/bashrc/sources/rust"
source "$HOME/dotfiles/bashrc/sources/go"
source "$HOME/dotfiles/bashrc/sources/react-native"
source "$HOME/dotfiles/bashrc/sources/bat"
```
