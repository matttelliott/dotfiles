#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat youtube-dl/README.md
stow --no-folding youtube-dl
brew install youtube-dl
brew install yt-dlp
