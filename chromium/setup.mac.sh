#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat chromium/README.md
stow chromium
brew install eloston-chromium # degoogled chromium
# brew install chromium # conflicts with eloston-chromium
brew install google-chrome
brew install homebrew/cask-versions/google-chrome-canary
