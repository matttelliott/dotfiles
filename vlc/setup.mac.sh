#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat vlc/README.md
stow --no-folding vlc
brew install vlc
