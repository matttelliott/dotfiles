#!/usr/bin/env bash
echo "********************Setup Ruby********************"
cd "$HOME/dotfiles"
bat ruby/README.md
brew install ruby
stow ruby
