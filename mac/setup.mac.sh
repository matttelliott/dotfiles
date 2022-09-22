#!/usr/bin/env bash
echo "********************Setup MacOS********************"
cd $HOME/dotfiles
stow mac
cd $HOME
bash .macos
