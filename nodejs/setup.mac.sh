#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat nodejs/README.md
git clone https://github.com/nvm-sh/nvm.git $HOME/.nvm; . $HOME/.nvm/nvm.sh
nvm install --lts
nvm use --lts

npm install -g neovim
npm install -g typescript-language-server
npm install -g vscode-langservers-extracted
npm install -g sql-formatter
npm install -g eslint_d
npm install -g prettier
stow --no-folding nodejs
