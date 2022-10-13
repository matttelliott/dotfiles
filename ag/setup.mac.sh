#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup Ag - The Silver Searcher********************"
bat ag/README.md
stow ag
brew install ag
