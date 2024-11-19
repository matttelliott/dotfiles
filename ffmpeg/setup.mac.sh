#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat ffmpeg/README.md
brew install ffmpeg || true
stow --no-folding ffmpeg
