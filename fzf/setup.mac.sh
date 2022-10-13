#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup FZF********************"
bat fzf/README.md
stow fzf
brew install fzf
