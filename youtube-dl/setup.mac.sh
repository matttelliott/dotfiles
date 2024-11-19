#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat youtube-dl/README.md
# brew install youtube-dl || true
brew install yt-dlp || true
stow --no-folding youtube-dl
