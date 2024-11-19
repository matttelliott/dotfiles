#!/usr/bin/env bash
cd "$HOME/dotfiles"
brew install eloston-chromium || true # degoogled chromium
# brew install chromium # conflicts with eloston-chromium
brew install google-chrome || true
brew install google-chrome@canary || true
stow --no-folding chromium
