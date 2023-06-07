#!/usr/bin/env bash
cd $HOME/dotfiles
go install github.com/charmbracelet/gum@latest
stow gum