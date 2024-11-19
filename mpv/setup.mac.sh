#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat mpv/README.md
brew install mpv || true
stow --no-folding mpv
