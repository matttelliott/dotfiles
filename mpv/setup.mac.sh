#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat mpv/README.md
stow --no-folding mpv
brew install mpv
exit 0
