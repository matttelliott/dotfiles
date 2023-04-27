#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install -y bat
alias bat=batcat
alias cat=batcat
bat bat/README.md
stow bat
