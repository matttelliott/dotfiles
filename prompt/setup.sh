#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install starship
stow prompt
