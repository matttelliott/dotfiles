#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat prompt/README.md
cargo binstall starship
stow prompt
