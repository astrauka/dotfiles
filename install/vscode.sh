if [[ "$OSTYPE" == "darwin"*  ]]; then
  ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
  ln -s ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
  ln -s ~/dotfiles/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets
fi
