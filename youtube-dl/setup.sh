#!/usr/bin/env bash
cd "$HOME/dotfiles"
pip install youtube-dl
pip install yt-dlp
stow --no-folding youtube-dl
