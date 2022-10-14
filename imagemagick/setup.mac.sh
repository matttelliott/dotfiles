#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat ffmpeg/README.md
stow ffmpeg
brew install ffmpeg
