#!/usr/bin/env bash
cd "$HOME/dotfiles"
brew install eloston-chromium # degoogled chromium
# brew install chromium # conflicts with eloston-chromium
brew install google-chrome
brew install google-chrome@canary
stow --no-folding chromium
exit 0
