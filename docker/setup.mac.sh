#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat docker/README.md
stow --no-folding docker
brew install docker --cask
brew install homebrew/cask/docker
brew install docker-compose

