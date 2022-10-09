#!/usr/bin/env bash
echo "********************Setup postgres********************"
cd "$HOME/dotfiles"
stow postgres
brew install postgresql@14
