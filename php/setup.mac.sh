#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat php/README.md
stow --no-folding php
brew install php
brew install composer
