#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install starship
stow prompt
echo 'eval "$(starship init bash)"' >> ~/.bashrc
