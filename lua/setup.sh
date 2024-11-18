#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat lua/README.md
asdf plugin add lua https://github.com/Stratus3D/asdf-lua
asdf install lua latest
asdf global lua latest
asdf shell lua latest
stow --no-folding lua

