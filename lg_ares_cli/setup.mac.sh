#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat lg_ares_cli/README.md
stow lg_ares_cli
npm uninstall -g @webosose/ares-cli
