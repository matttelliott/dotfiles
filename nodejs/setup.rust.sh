#!/usr/bin/env bash
cat nodejs/README.md
cd "$HOME/dotfiles"
eval "$(rtx activate bash)"
rtx use nodejs@lts
stow nodejs

npm install -g neovim
npm install -g typescript-language-server
npm install -g vscode-langservers-extracted
npm install -g sql-formatter
npm install -g eslint_d
npm install -g prettier
