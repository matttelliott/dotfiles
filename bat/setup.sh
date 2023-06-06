#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install bat
alias cat=bat
stow bat
