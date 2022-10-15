#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat lua/README.md
brew install lua-language-server
stow lua
