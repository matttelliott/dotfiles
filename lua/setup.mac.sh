#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat lua/README.md
brew install luarocks
brew install lua-language-server
brew install stylua
stow --no-folding lua
