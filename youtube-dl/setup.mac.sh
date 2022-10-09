#!/usr/bin/env bash
echo "********************Setup youtube-dl********************"
cd "$HOME/dotfiles"
stow youtube-dl
brew install youtube-dl
brew install yt-dlp
