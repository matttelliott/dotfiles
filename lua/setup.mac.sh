#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat ruby/README.md
brew install ruby
stow ruby
