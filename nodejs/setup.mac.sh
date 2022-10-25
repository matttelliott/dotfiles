#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat nodejs/README.md
stow nodejs
source .zsh_module_nodejs
nvm install --lts
nvm use --lts

npm install -g neovim
npm install -g typescript-language-server
npm install -g vscode-langservers-extracted
npm install -g sql-formatter
npm install -g eslint_d
npm install -g prettier
