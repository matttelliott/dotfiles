#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat spotify/README.md
stow --no-folding spotify
brew install spotify
exit 0
