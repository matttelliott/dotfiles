#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat lua/README.md
brew install luarocks
brew install lua-language-server
brew install luajit
brew install stylua
stow --no-folding lua

