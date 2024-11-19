#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vlc/README.md
brew install vlc || true
stow --no-folding vlc
