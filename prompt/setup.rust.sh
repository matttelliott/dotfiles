#!/usr/bin/env bash cd "$HOME/dotfiles"
bat prompt/README.md
cargo install starship
stow prompt
