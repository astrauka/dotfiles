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
./git.sh
```

### Bash profile

Append your `.bash_profile` file with:

```
# dotfiles
source "$HOME/dotfiles/bashrc/sources/git"
source "$HOME/dotfiles/bashrc/sources/postgres"
source "$HOME/dotfiles/bashrc/sources/rbenv"
source "$HOME/dotfiles/bashrc/sources/ruby"
source "$HOME/dotfiles/bashrc/sources/tmux"
```
