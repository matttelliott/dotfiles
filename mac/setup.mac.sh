#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup MacOS********************"
bat mac/README.md
stow mac
cd $HOME
bash .macos
