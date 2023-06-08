#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat ffmpeg/README.md
stow --no-folding ffmpeg
brew install ffmpeg
