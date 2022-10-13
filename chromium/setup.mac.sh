#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat chromium/README.md
stow chromium
brew install eloston-chromium
brew install chromium
brew install google-chrome
brew install homebrew/cask-versions/google-chrome-canary
