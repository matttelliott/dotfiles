#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install ffmpeg -y
stow --no-folding ffmpeg
