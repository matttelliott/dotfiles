#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vim/README.md
stow --no-folding vim
brew install vim
exit 0
