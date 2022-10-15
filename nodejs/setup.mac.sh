#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat nodejs/README.md
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts
nvm use --lts

npm install -g neovim
npm install -g typescript-language-server
npm install -g vscode-langservers-extracted
npm install -g eslint_d
npm install -g prettier
stow nodejs
