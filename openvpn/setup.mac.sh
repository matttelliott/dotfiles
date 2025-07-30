#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat openvpn/README.md
brew install openvpn-connect
stow --no-folding openvpn
