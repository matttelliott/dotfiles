#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat ffmpeg/README.md
stow --no-folding ffmpeg
brew install ffmpeg
