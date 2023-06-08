#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat docker/README.md
stow --no-folding docker
brew install docker
brew install homebrew/cask/docker
brew install docker-compose

