#!/usr/bin/env bash
set -v
cd "$HOME/dotfiles"

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs
asdf install nodejs latest
asdf global nodejs latest
asdf shell nodejs latest
asdf exec npm install -g neovim typescript typescript-language-server vscode-langservers-extracted eslint_d prettier ts-node
stow --no-folding nodejs
