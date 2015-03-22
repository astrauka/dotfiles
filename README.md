# My personal dotfiles

Works for OSX and Linux

## Installing

```
git clone git@github.com:astrauka/dotfiles.git ~/dotfiles
cd ~/dotfiles/install
chmod +x *
```

### Sublime

```
./sublime.sh
```

#### Sublime Ruby Test

```
./sublime-ruby-test.sh
```

### Bash profile

Append your `.bash_profile` file with:

```
# dotfiles
source $HOME/dotfiles/bashrc/sources/*
```
