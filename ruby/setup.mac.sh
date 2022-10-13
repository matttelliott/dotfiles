#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup Ruby********************"
bat ruby/README.md
brew install ruby
stow ruby
