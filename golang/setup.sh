#!/usr/bin/env bsh
cd $HOME/dotfiles
rtx use --global golang@latest
stow --no-folding golang
