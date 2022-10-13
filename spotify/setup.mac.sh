#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup Spotify********************"
bat README.md
stow spotify
brew install spotify
