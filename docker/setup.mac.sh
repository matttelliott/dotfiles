#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo '********************Setup Docker********************'
bat docker/README.md
stow docker
brew install docker
brew install homebrew/cask/docker
brew install docker-compose

