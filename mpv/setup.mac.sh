#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat mpv/README.md
stow --no-folding mpv
brew install mpv
