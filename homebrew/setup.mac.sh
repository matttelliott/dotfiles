#!/usr/bin/env bash
echo "********************Setup Homebrew********************"
cd %HOME/dotfiles
stow homebrew

# homebrew already installed as core dependency
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
