#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vlc/README.md
stow --no-folding vlc
brew install vlc
exit 0
